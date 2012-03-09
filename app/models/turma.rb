class Turma < ActiveRecord::Base
  belongs_to :curso
  belongs_to :periodo

  def to_s
    "#{curso} - #{periodo.periodo}"
  end
end
