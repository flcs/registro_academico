class Curso < ActiveRecord::Base
  belongs_to :modalidade
  has_many :periodos
  has_many :turmas

  def name
    nome
  end
end
