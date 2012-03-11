class TurmasController < ApplicationController
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
    professor = Net::HTTP.get('10.10.3.126', "/api/servidor/#{parametros['professor_id']}/json/", 8000)
    parametros[:professor_nome] = ActiveSupport::JSON.decode(professor)["nome"]

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
