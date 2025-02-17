class CreateVisitas < ActiveRecord::Migration[8.0]
  def change
    create_table :visitas do |t|
      t.references :visitante, null: false, foreign_key: true
      t.references :user, null: true, foreign_key: true
      t.references :setor, null: true, foreign_key: true
      t.integer :status
      t.date :data

      t.timestamps
    end
  end
end
