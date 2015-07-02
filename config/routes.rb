Rails.application.routes.draw do

  root "static_pages#home"

  get '/home', to: 'static_pages#home'
  get '/blog', to: 'static_pages#blog'
  # get '/projects', to: 'static_pages#projects'

  resources :projects
end
