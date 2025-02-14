class Visita < ApplicationRecord
  belongs_to :visitante
  belongs_to :funcionario

  enum :status  , agendada: 0, realizada: 1, cancelada: 2

  after_initialize :set_default_status, if: :new_record?
  def set_default_status
    self.status ||= :agendada
  end
end
