class Funcionario < ApplicationRecord
  belongs_to :setor, foreign_key: 'setor_id'
  has_many :visitas
  has_one :unidade, through: :setor
  has_many :visitantes, through: :visitas
  # funcionalidade para mostrar no painel dos funcionaários os visitantes que ele recebeu/receberá

end
