class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.references :departamento, index: true, foreign_key: true
      t.string :nome
      t.string :cargo
      t.string :sexo
      t.string :endereco

      t.timestamps null: false
    end
  end
end
