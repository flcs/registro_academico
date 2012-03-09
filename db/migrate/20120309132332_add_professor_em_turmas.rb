class AddProfessorEmTurmas < ActiveRecord::Migration
  def up
    add_column :turmas, :professor_id, :integer
    add_column :turmas, :professor_nome, :string
  end

  def down
    remove_column :turmas, :professor_id
    remove_column :turmas, :professor_nome
  end
end
