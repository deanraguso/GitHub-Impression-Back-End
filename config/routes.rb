Rails.application.routes.draw do
  devise_for :users, path: 'api/v1'
end
