class Disciplina < ApplicationRecord
  belongs_to :curso

  has_many :disciplina_periodos
  has_many :docentes, through: :disciplina_periodos
end
