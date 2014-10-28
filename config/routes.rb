Rails.application.routes.draw do

  namespace :home do
    get '/', to: 'homes#welcome'
    get 'projects/show/:id', to: "projects#show"
  end

  root to: "home/homes#welcome"

  namespace :blog do
    resources :entries, except: :index, shallow: true do
      resources :comments, only: [:create, :destroy]
    end
  end



  namespace :resume do
    get '',                      to: "resumes#overview"
    get '/download',             to: "resumes#download", references: "false"
    get '/download/:references', to: "resumes#download"
  end



  # namespace :business_card do
  #   get '',          to: "business_card#overview"
  #   get '/download', to: "business_card#download"
  # end


  # resources :bios,      only: [:index]
  # resources :interests, only: [:index]


  # get '/print/business_card', to: "prints#business_card"

  # get "/status", to: "homes/homes#status"
end
