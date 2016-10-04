Rails.application.routes.draw do
  
  root 'tables#homepage'
  post 'users' => 'users#create'
  post 'tables' => 'tables#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
