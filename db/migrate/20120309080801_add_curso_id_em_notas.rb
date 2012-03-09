class AddCursoIdEmNotas < ActiveRecord::Migration
  def up
    add_column :notas, :curso_id, :integer
  end

  def down
    remove_column :notas, :curso_id
  end
end