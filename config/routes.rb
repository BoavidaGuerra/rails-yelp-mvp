Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: 'restaurants#index'

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
