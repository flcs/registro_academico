class Turma < ActiveRecord::Base
  belongs_to :curso
  belongs_to :periodo
end
