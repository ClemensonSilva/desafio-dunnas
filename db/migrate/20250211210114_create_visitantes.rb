class CreateVisitantes < ActiveRecord::Migration[8.0]
  def change
    create_table :visitantes do |t|
      t.string :nome
      t.string :cpf
      t.string :rg
      t.string :telefone
      t.string :foto
      t.references :visita, null: false

      t.timestamps
    end
    add_foreign_key :visitantes, :visita, column: :id
  end
end
