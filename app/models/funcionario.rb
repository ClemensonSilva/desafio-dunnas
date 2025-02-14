class Funcionario < ApplicationRecord
  belongs_to :setor, foreign_key: 'setor_id'
end
