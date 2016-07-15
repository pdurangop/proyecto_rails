Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    resources :vehicles
  end

  resources :locations do
    resources :slots
  end

end
