class CreateDepartamentos < ActiveRecord::Migration
  def change
    create_table :departamentos do |t|
      t.references :empresa, index: true, foreign_key: true
      t.string :nome
      t.string :ramal
      t.string :responsavel

      t.timestamps null: false
    end
  end
end
