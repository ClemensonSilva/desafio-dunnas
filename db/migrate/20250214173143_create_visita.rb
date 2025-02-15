class CreateVisita < ActiveRecord::Migration[8.0]
  def change
    create_table :visita do |t|
      t.integer :status, default: 0
      t.datetime :data
      t.references :visitante, null: false, foreign_key: true
      t.references :user, null: true, foreign_key: true #funcionario que recebera a visita

      t.timestamps
    end
    add_foreign_key :visita, :visitantes, column: :visitante_id
    add_foreign_key :visita, :users, column: :user_id
  end
end
