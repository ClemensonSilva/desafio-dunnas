class CreateSetors < ActiveRecord::Migration[8.0]
  def change
    create_table :setors do |t|
      t.string :nome
      t.references :unit, null:false

      t.timestamps
    end
    add_foreign_key :setors, :unidades, column: :id  
  end
end
