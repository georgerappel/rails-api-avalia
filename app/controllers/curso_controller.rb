class CursoController < ApplicationController

  def index
    @cursos = Curso.all
    json_response(@cursos)
  end

end
