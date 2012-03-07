class CreateTurmas < ActiveRecord::Migration
  def change
    create_table :turmas do |t|
      t.references :curso
      t.references :periodo

      t.timestamps
    end
    add_index :turmas, :curso_id
    add_index :turmas, :periodo_id
  end
end
