class CreateSetors < ActiveRecord::Migration[8.0]
  def change
    create_table :setors do |t|
      t.string :nome
      t.references :unidade, null: false
      t.timestamps
    end
  end
end
