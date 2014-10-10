Rails.application.routes.draw do
  get 'homes/welcome', to: 'homes#welcome'

  root to: "homes#welcome"

  namespace :blog do
    resources :entries, except: :index, shallow: true do
      resources :comments, only: [:create, :dstroy]
    end
  end

  get "/status", to: "homes#status"

end
