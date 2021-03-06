Rails.application.routes.draw do
  # get 'reviews/new'
  # get 'reviews/create'
  # get 'restaurants/index'
  # get 'restaurants/show'
  # get 'restaurants/new'
  # get 'restaurants/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'

  resources :restaurants, except: %i[destroy edit update] do
    resources :reviews, only: %i[new create]
  end
  # Add new pet
  # get '/pets/new', to: 'pets#new'
  # post '/pets', to: 'pets#create'

  # List pets
  # get '/pets', to: 'pets#index'
  # does it find the column automatically?

  # A restaurant`s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
  # resources :restaurants # , only: %w[chinese italian japanese french belgian]
  # When a restaurant is destroyed, all of its reviews must be destroyed as well.
  # has_many :reviews, dependent: :destroy
  # A restaurant must have a name, an address and a category
end
