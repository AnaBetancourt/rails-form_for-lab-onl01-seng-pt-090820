Rails.application.routes.draw do
  resources :school_classes

  resources :students

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
