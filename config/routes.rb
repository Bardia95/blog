Rails.application.routes.draw do
  resources :essays, controller: 'articles'
  
  get '/admin', to: 'articles#admin'



  root 'articles#index'
end
