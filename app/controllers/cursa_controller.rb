class CursaController < ApplicationController
  #TODO Concluir metodos e deixar remover
  # GET /alunos
  def index
    @alunos = Aluno.all
    json_response(@alunos)
  end

  # POST /alunos
  def create
    @aluno = Aluno.create!(aluno_params)
    json_response(@aluno, :created)
  end
end
