class CreateSetors < ActiveRecord::Migration[8.0]
  def change
    create_table :setors do |t|
      t.string :nome
      t.references :unidade, null: false
      t.timestamps
    end
    add_foreign_key :setors, :unidades, column: :unidade_id
  end
end
