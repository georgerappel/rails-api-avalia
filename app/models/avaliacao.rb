class Avaliacao < ApplicationRecord
  belongs_to :aluno
  belongs_to :disciplinaPeriodo

  has_many :etiquetas, dependent :destroy
end
