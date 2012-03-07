class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.string :descricao
      t.references :periodo

      t.timestamps
    end
    add_index :disciplinas, :periodo_id
  end
end
