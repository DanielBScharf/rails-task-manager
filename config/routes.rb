Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/tasks/new', to: 'tasks#new', as: :new_task
  get '/tasks', to: 'tasks#tasks', as: :tasks
  post '/tasks', to: 'tasks#create'

  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  get '/tasks/:id', to: 'tasks#task', as: :task
  patch '/tasks/:id', to: 'tasks#update'

  delete '/tasks/:id', to: 'tasks#destroy'
  # Defines the root path route ("/")
  # root "articles#index"
end
