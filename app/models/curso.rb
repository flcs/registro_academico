class Curso < ActiveRecord::Base
  belongs_to :modalidade

  def name
    nome
  end
end
