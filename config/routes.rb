Rails.application.routes.draw do
  get 'tasks/show'
  root 'tasks#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
