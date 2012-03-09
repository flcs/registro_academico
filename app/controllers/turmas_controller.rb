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
    req = ActiveSupport::JSON.decode request.body
    servidor = ActiveSupport::JSON.decode Net::HTTP.get('10.12.10.74', '/api/servidor/1/json/', 8000)
    req[:professor_nome] = servidor["nome"]

    Turma.create req
  end

  def show
    @turma = Turma.find(params[:id])
    render json: @turma
  end
end
