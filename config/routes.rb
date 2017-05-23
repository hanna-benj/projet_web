Rails.application.routes.draw do
  get 'pages/home' => 'pages#home'
  get 'pages/inscription' => 'pages#inscription'
  get 'pages/admin' => 'pages#admin'
  get 'pages/prof' => 'pages#prof'
  get 'pages/examprof' => 'pages#examprof'
  get 'pages/ajoutmatiere' => 'pages#ajoutmatiere'
  get 'pages/ajoutexam' => 'pages#ajoutexam'
  get 'pages/note' => 'pages#note'
  get 'pages/eleve' => 'pages#eleve'
  get 'pages/inviteleve' => 'pages#inviteleve'

  post 'pages/home' => 'pages#connexion'
  post 'pages/inscription' => 'pages#inscrire'
  post 'pages/admin' => 'pages#accepter'
  post 'pages/ajoutmatiere' => 'pages#ajouter'
  post 'pages/prof' => 'pages#examen'
  post 'pages/ajoutexam' => 'pages#ajouterexam'
  post 'pages/examprof' => 'pages#voirnote'
  post 'pages/note' => 'pages#ajoutnote'
  post 'pages/inviteleve' => 'pages#inviter'
  post 'pages/eleve' => 'pages#modifiermdp'

  delete 'pages/admin' => 'pages#refuser'
  root 'page#connexion'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
