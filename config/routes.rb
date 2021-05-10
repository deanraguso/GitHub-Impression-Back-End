Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      scope ":id" do
        post 'favorites', to: "favorites#create"
      end

      resources :favorites, except: [:create, :index]

      post "authenticate", to: "authentication#create"
    end
  end

  devise_for :users, path: 'api/v1'
end
