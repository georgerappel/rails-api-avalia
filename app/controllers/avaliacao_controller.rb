class AvaliacaoController < ApplicationController
  #TODO Tudo praticamente.
  # chama o metodo set_avaliacao antes dos metodos especificados
  before_action :set_avaliacao, only: [:show, :update, :destroy]

  # GET /avaliacao
  def index
    @avals = Avaliacao.all
    json_response(@avals)
  end

end
