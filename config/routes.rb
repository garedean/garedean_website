Rails.application.routes.draw do

  root "static_pages#landing_page"

  get '/home', to: 'static_pages#home'
  get '/blog', to: 'static_pages#blog'

  resources :projects
end
