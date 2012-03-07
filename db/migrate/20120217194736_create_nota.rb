class CreateNota < ActiveRecord::Migration
  def change
    create_table :nota do |t|
      t.integer :valor
      t.references :aluno
      t.references :discliplina

      t.timestamps
    end
    add_index :nota, :aluno_id
    add_index :nota, :discliplina_id
  end
end
