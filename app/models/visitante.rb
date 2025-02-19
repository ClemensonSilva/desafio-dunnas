class Visitante < ApplicationRecord

  validates :nome, presence: true
  validates :rg, presence: true, uniqueness: true
  validates :cpf, presence: true, uniqueness: true
  validates :telefone, presence: true
  validates :foto, presence: true
  validate :image_size_validation

  mount_uploader :foto, CrachaUploader
  private
  def image_size_validation
  errors[:image] << "should be less than 500KB" if foto.size >
  0.5.megabytes
  end
end
