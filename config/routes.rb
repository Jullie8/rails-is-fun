Rails.application.routes.draw do
  resources :contributions
  resources :books
  resources :authors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: "application#index"
end
