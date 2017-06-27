class DisciplinaPeriodo < ApplicationRecord
  belongs_to :docente
  belongs_to :disciplina
end
