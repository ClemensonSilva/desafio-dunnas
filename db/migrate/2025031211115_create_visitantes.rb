class CreateVisitantes < ActiveRecord::Migration[8.0]
  def change
    create_table :visitantes do |t|
      t.string :nome, null: false
      t.string :cpf,  null: false
      t.string :rg,   null: false
      t.string :telefone,  null: false
      t.string :foto, null: false

      t.timestamps
    end
      end
end
