class Setor < ApplicationRecord
  belongs_to :unidade, foreign_key: 'unidade_id'
end
