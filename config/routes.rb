Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "dashboard#index"

  resources :beneficiarios	
  resources :faturas	
<<<<<<< HEAD
    resources :medicos	

  get '/dashboard' => "dashboard#index"

=======
  get '/atendimento' => "atendimento#index"
  resources :medicos
>>>>>>> 6d7098f6a6a48086a279d91e00c83dbbee770bfc
end
