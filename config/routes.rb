Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  get 'tasks', to: 'tasks#index' # ROOT TO
  get 'tasks/new', to: 'tasks#new', as: 'task_new'
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'task_edit'

  post 'tasks', to: 'tasks#create'
  patch 'tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy'
  # root "articles#index"
end
