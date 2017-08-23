class DisciplinaPeriodo < ApplicationRecord
  belongs_to :disciplina
  belongs_to :docente

  has_many :cursa
end
