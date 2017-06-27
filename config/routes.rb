Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :aluno do
    resources :cursa
  end
  resources :tag
  resources :disciplina
  resources :docente
  resources :disciplina_periodo
  resources :avaliacao do
    resources :etiqueta
  end
end
