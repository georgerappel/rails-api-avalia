class Aluno < ApplicationRecord
  has_many :cursa

  belongs_to :curso
end
