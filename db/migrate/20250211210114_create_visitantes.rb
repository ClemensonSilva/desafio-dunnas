class CreateVisitantes < ActiveRecord::Migration[8.0]
  def change
    create_table :visitantes do |t|
      t.string :nome, null: false
      t.string :cpf,  null: false, unique: true
      t.string :rg,   null: false, unique: true
      t.string :telefone,  null: false
      t.string :foto, null: false
      t.references :visita, null: false

      t.timestamps
    end
    add_foreign_key :visitantes, :visita, column: :visita_id
  end
end
