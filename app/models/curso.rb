class Curso < ApplicationRecord
  belongs_to :departamento
  has_many :disciplinas
  has_many :alunos
end
