Rails.application.routes.draw do
  resources :tasks
  get 'tasks/index'
#  get 'tasks/new'
  
  root 'tasks#index'
end

