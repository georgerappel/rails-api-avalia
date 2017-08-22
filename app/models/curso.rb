class Curso < ApplicationRecord
  belongs_to :departamento
  has_many :disciplinas
end
