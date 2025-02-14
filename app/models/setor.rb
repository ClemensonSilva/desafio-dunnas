class Setor < ApplicationRecord
  belongs_to :unidade, foreign_key: 'unidade_id'
  has_many :funcionarios
  has_many :visitas, through: :funcionarios
end
