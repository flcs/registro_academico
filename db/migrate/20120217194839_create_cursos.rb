class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :nome
      t.references :modalidade
      t.string :descricao
      t.integer :carga_horaria

      t.timestamps
    end
    add_index :cursos, :modalidade_id
  end
end
