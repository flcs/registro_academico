class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.integer :pasta
      t.string :matricula
      t.string :nome
      t.integer :idade
      t.date :data_nascimento
      t.string :rg
      t.string :cpf
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :nacionalidade
      t.string :filiacao

      t.timestamps
    end
  end
end
