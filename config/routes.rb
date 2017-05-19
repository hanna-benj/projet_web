Rails.application.routes.draw do
  get 'pages/home' => 'pages#home'
  get 'pages/inscription' => 'pages#inscription'
  get 'pages/admin' => 'pages#admin'
  get 'pages/prof' => 'pages#prof'

  post 'pages/home' => 'pages#connexion'
  post 'pages/inscription' => 'pages#inscrire'

  post 'pages/admin' => 'pages#accepter'
  delete 'pages/admin' => 'pages#refuser'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
