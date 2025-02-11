class CreateFuncionarios < ActiveRecord::Migration[8.0]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.references :setor, null:false

      t.timestamps
    end
    add_foreign_key :funcionarios, :setors, column: :id
  end
end
