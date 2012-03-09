class CreateDisciplinasPeriodos < ActiveRecord::Migration
  def up
    create_table :disciplinas_periodos, :id => false do |t|
      t.references :disciplina, :periodo
    end
  end

  def down
    drop_table :disciplinas_periodos
  end
end