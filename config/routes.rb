Rails.application.routes.draw do
  get '/set_account', to: 'accounts#create'
  get '/dashboard', to: 'dashboard#index'
  post '/find_relevant_spaces', to: 'spaces_finder#create'
  get '/relevant_growth_spaces', to: 'spaces_finder#show'

  # root to: 'dashboard#index'
  root to: 'accounts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
