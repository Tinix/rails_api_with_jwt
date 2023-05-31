# frozen_string_literal: true

Rails.application.routes.draw do

 namespace :api, defaults: { format: :json } do
   namespace :v1 do
     resources :users, param: :_username
   end
 end

  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
end
