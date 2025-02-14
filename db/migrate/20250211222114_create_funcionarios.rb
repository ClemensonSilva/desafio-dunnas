class CreateFuncionarios < ActiveRecord::Migration[8.0]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.references :setor, null:false

      t.timestamps
    end
    add_foreign_key :funcionarios, :setors, column: :id
  end
end

#funcionario consegue filtrar por data os atendimentos
#funcionario vê a lista de pacientes com status de aguardando na cor amarela
# e a lista de pacientes com status de atendido na cor verde
# e a lista de pacientes com status de não atendido na cor vermelha
