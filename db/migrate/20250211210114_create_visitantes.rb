class CreateVisitantes < ActiveRecord::Migration[8.0]
  def change
    create_table :visitantes do |t|
      t.string :nome
      t.string :CPF
      t.string :RG
      t.string :telefone
      t.string :foto

      t.timestamps
    end
  end
end
