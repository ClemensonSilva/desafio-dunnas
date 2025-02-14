class CreateSetors < ActiveRecord::Migration[8.0]
  def change
    create_table :setors do |setor.unidade
    => nilt|
      t.string :nome
      t.references :unidade, null: false
      t.timestamps
    end
    add_foreign_key :setors, :unidades, column: :id
  end
end
