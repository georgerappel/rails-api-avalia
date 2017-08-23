class Docente < ApplicationRecord
  has_many :disciplina_periodos
  has_many :disciplinas, through: :disciplina_periodos
end
