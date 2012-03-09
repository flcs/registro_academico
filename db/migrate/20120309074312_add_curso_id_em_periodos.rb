class AddCursoIdEmPeriodos < ActiveRecord::Migration
  def up
    add_column :periodos, :curso_id, :integer
    remove_column :disciplinas, :periodo_id
  end

  def down
    add_column :disciplinas, :periodo_id, :integer
    remove_column :periodos, :curso_id
  end
end
