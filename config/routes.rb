Rails.application.routes.draw do

  # use the films controller
  resources :films	do
    member do
      post 'reviews' , to: 'reviews#create'
    end
  end

  root 'films#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
