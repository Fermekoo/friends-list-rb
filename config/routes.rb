Rails.application.routes.draw do
  root to: 'todo#index', as: 'todo_index'
  get '/todo', to: 'todo#create', as: 'todo_create'
  post '/todo', to: 'todo#store', as: 'todo_store'
  get 'todo/:id', to: 'todo#edit', as: 'todo_edit'
  put 'todo/:id', to: 'todo#update', as: 'todo_update'
  delete 'todo/:id', to: 'todo#delete', as: 'todo_delete'
end
