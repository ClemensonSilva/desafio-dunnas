class Visitante < ApplicationRecord
  has_many :visitas

  validates :nome, presence: true
  validates :rg, presence: true, uniqueness: true
  validates :cpf, presence: true, uniqueness: true
  validates :telefone, presence: true
  validates :foto, presence: true

end
