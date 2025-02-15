class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
  enum :role , admin: 0, atendente: 1, funcionario: 2

  belongs_to :setor, optional:true, foreign_key: 'setor_id'
  belongs_to :unidade,  optional:true, foreign_key: 'unidade_id'

  validates :setor, presence: true, if: :funcionario?
  validates :unidade, presence: true, if: :atendente?

  has_many :visitas
  has_many :visitantes, through: :visitas
  after_initialize :set_default_role, if: :new_record?



  def set_default_role
      self.role ||= :atendente
    end
end
