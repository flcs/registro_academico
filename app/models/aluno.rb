class Aluno < ActiveRecord::Base
  has_many :notas
  has_and_belongs_to_many :cursos

  def name
    nome
  end
end
