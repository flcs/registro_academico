class CreatePeriodos < ActiveRecord::Migration
  def change
    create_table :periodos do |t|
      t.string :periodo

      t.timestamps
    end
  end
end
