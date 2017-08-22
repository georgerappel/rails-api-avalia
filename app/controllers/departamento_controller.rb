class DepartamentoController < ApplicationController

  def index
    @departamentos = Departamento.all
    json_response(@departamentos)
  end

end
