Rails.application.routes.draw do
  root "characters#index"
  resources :characters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
