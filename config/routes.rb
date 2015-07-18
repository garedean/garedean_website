Rails.application.routes.draw do
  devise_for :users
  # as :user do
  #   get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
  #   put 'users' => 'devise/registrations#update', :as => 'user_registration'
  # end

  root "static_pages#landing_page"
  resources :projects
  resources :blogs do
    resources :comments
  end

  # For later development, not in use
  get '/about',      to: 'static_pages#about'
  get '/blog',       to: 'static_pages#blog'
  get '/references', to: 'static_pages#references'

end
