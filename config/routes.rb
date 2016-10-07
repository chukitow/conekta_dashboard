ConektaDashboard::Engine.routes.draw do
  get '/charges', to: 'charges#index'
  root 'charges#index'
end
