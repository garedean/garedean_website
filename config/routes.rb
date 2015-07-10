Rails.application.routes.draw do
  devise_for :users

  root "static_pages#landing_page"
  resources :projects
  resources :blogs

  # For later development, not in use
  get '/about', to: 'static_pages#about'
  get '/blog', to: 'static_pages#blog'

end
