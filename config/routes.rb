Rails.application.routes.draw do
  resources :notes
  resources :books
  root 'home#index'

  get '/about' => 'home#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
