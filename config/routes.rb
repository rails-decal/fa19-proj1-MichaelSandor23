Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  patch "home/index/:id", to: "pokemon#capture", as: "capture" 
  patch "trainers/:id", to:"pokemon#damage", as: "damage"
  get "pokemons/new", to:"pokemons#new", as: "pokemons_new"
  post "pokemons/new", to: "pokemons#create"
  resources :trainers
end
