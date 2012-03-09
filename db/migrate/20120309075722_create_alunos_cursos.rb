class CreateAlunosCursos < ActiveRecord::Migration
  def up
    create_table :alunos_cursos, :id => false do |t|
      t.references :aluno, :curso
    end
  end

  def down
    drop_table :alunos_cursos
  end
end