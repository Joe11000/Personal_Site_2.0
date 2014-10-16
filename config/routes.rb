Rails.application.routes.draw do

  namespace :home do
  get 'projects/show'
  end

namespace :home do
  get '/', to: 'homes#welcome'
end

  root to: "home/homes#welcome"

  namespace :blog do
    resources :entries, except: :index, shallow: true do
      resources :comments, only: [:create, :dstroy]
    end
  end



  namespace :resume do
    get '',                      to: "resumes#overview"
    get '/download/:references', to: "resumes#download"
    get '/download',             to: "resumes#download", references: "false"
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
