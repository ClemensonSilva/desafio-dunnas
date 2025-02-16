class Setor < ApplicationRecord
  belongs_to :unidade, foreign_key: 'unidade_id'
  has_many :users, foreign_key: 'setor_id'
  has_many :visitas, through: :users

  validates :nome, presence: true
  validates :unidade, presence: true
end
