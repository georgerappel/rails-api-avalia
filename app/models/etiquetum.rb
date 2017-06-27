class Etiquetum < ApplicationRecord
  belongs_to :tag
  belongs_to :aluno
  belongs_to :disciplinaPeriodo
end
