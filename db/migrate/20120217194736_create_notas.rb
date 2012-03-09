class CreateNotas < ActiveRecord::Migration
  def change
    create_table :notas do |t|
      t.integer :valor
      t.references :aluno
      t.references :discliplina

      t.timestamps
    end
    add_index :notas, :aluno_id
    add_index :notas, :discliplina_id
  end
end
