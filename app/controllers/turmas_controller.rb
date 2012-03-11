class TurmasController < ApplicationController
  RH_HOST = Rails.application.config.rh_host
  require "net/http"

  def index
    if params[:professor_id]
      @turmas = Turma.find_all_by_professor_id(params[:professor_id])
    else
      @turmas = Turma.all
    end
    render json: @turmas
  end

  def create
    parametros = ActiveSupport::JSON.decode request.body
    if RH_HOST.present?
      professor = Net::HTTP.get(RH_HOST, "/api/servidor/#{parametros['professor_id']}/json/", 8000)
      parametros[:professor_nome] = ActiveSupport::JSON.decode(professor)["nome"]
    end
    Turma.create parametros
    head :no_content
  end

  def show
    @turma = Turma.find(params[:id])
    render json: @turma
  end

  def destroy
    @turma = Turma.find(params[:id])
    @turma.destroy
    head :no_content
  end
end
