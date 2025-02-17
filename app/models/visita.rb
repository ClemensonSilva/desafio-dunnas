class Visita < ApplicationRecord
  enum :status  , agendada: 0, realizada: 1, cancelada: 2

  belongs_to :visitante
  belongs_to :user, optional:true, foreign_key:'user_id'
  has_one :setor, through: :user
  has_one :unidade, through: :setor

  validates :setor, presence: false, if: :user_atendente # Não é nescessário indicar um setor no form caso o user seja um atendente

  validates :user, presence: true
  validates :visitante, presence: true
  validates :data, presence: true
  validate :data_apos_hoje
  validate :user_pertence_setor

  after_initialize :set_default_status, if: :new_record?
  def set_default_status
    self.status ||= :agendada
  end

  def data_apos_hoje
    if data.present? && data < Date.today
      errors.add(:data, 'deve ser após a data de hoje: ' + Date.today.strftime("%d/%m/%Y"))
    end
  end
  def user_pertence_setor
    if user.present?  && user.setor != setor
      errors.add(:user, 'não pertence ao setor indicado')
    end
  end
  def user_funcionario
    if user.present? && !user.funcionario?
        errors.add(:user, 'deve ser um funcionário ')
    end
  end
  def user_atendente
  if user.present? && !user.atendente?
       errors.add(:user, 'deve ser um atendente')
  end
  end
  def user_admin
  if user.present? && !user.admin?
      errors.add(:user, 'deve ser um admin')
  end
end
end
