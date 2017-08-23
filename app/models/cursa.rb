class Cursa < ApplicationRecord
  belongs_to :aluno

  belongs_to :disciplina_periodo
end
