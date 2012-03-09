class Nota < ActiveRecord::Base
  set_table_name "notas"
  belongs_to :aluno
  belongs_to :disciplina

  def to_s
    valor
  end
end
