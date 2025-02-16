class Unidade < ApplicationRecord
  has_many :setors
  has_many :users, through: :setors
  has_many :visitas, through: :users

  validates :nome, presence: true

end
