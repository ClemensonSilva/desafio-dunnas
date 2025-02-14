class Unidade < ApplicationRecord
  has_many :setors
  has_many :funcionarios, through: :setors
  has_many :visitas, through: :funcionarios
end
