class Cursa < ApplicationRecord
  belongs_to :aluno
  belongs_to :disciplinaPeriodo

  has_one :avaliacao
end
