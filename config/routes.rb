Rails.application.routes.draw do
  get 'homes/welcome', to: 'homes#welcome'

  root to: "homes#welcome"

  namespace :blog do
    resources :entries, except: :index, shallow: true do
      resources :comments, only: [:create, :dstroy]
    end
  end

  get "/status", to: "homes#status"








  # resources :bios,      only: [:index]
  # resources :resumes,   only: [:index]
  # resources :interests, only: [:index]


  # get '/print/resume', to: "prints#resume"
  # get '/print/business_card', to: "prints#business_card"

end
