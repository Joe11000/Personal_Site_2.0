Rails.application.routes.draw do

  get 'homes/welcome', to: 'homes#welcome'

  root to: "homes#welcome"

  namespace :blog do
    resources :entries, except: :index, shallow: true do
      resources :comments, only: [:create, :dstroy]
    end
  end



  namespace :resume do
    get '',                      to: "resume#overview"
    get '/download/:references', to: "resume#download"
    get '/download',             to: "resume#download", references: "false"
  end



  # namespace :business_card do
  #   get '',          to: "business_card#overview"
  #   get '/download', to: "business_card#download"
  # end


  # resources :bios,      only: [:index]
  # resources :interests, only: [:index]


  # get '/print/business_card', to: "prints#business_card"

  # get "/status", to: "homes#status"
end
