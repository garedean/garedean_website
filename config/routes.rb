Rails.application.routes.draw do

  root "static_pages#landing_page"
  resources :projects

  # For later development, not in use
  get '/home', to: 'static_pages#home'
  get '/blog', to: 'static_pages#blog'

end
