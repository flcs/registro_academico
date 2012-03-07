class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :matricula
      t.string :nome
      t.integer :idade
      t.string :email
      t.string :telefone
      t.string :formacao
      t.string :rg
      t.string :cpf
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :nacionalidade

      t.timestamps
    end
  end
end
