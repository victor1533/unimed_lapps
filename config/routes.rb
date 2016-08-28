Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "dashboard#index"

  resources :beneficiarios	
  resources :faturas	
  resources :medicos	

  get '/dashboard' => "dashboard#index"

  get '/atendimentos' => "atendimentos#index"
  get '/buscas' => "buscas#index"
  resources :telefones


end
