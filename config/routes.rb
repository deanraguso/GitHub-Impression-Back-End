Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post "authenticate", to: "authentication#create"
    end
  end
  devise_for :users, path: 'api/v1'
end
