Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Route pour afficher la liste des tâches
  get 'tasks', to: 'tasks#index'

  # Route pour afficher une tâche spécifique

  get 'tasks/new', to: 'tasks#new', as: :new_task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # Route pour créer une nouvelle tâche
  post 'tasks', to: 'tasks#create'

  # Route pour éditer une tâche existante
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # Route pour supprimer une tâche
  delete 'tasks/:id', to: 'tasks#destroy'
end
