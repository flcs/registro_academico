class Aluno < ActiveRecord::Base
  has_many :notas
end
