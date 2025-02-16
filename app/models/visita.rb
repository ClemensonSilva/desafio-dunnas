class Visita < ApplicationRecord
  enum :status  , agendada: 0, realizada: 1, cancelada: 2

  belongs_to :visitante
  belongs_to :user, optional:true, foreign_key:'user_id'
  has_one :setor, through: :user
  has_one :unidade, through: :setor

  validates :setor, presence: false, if: :user_atendente
  validates :user, presence: true, if: :user_funcionario
  validates :user, presence: false, if: :user_atendente




  after_initialize :set_default_status, if: :new_record?
  def set_default_status
    self.status ||= :agendada
  end
  def user_funcionario
    if user.present? && !user.funcionario?
        errors.add(:user, 'deve ser um funcionário')
    end
  end
  def user_atendente
  if user.present? && !user.atendente?
      errors.add(:user, 'deve ser um atendente')
  end
end
end
