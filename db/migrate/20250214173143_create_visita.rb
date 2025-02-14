class CreateVisita < ActiveRecord::Migration[8.0]
  def change
    create_table :visita do |t|
      t.integer :status, default: 0
      t.datetime :data
      t.references :visitante, null: false
      t.references :funcionario, null: false

      t.timestamps
    end
    add_foreign_key :visita, :visitantes, column: :visitante_id
    add_foreign_key :visita, :funcionarios, column: :funcionario_id
  end
end
