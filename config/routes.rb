Rails.application.routes.draw do
  devise_for :users, :skip => :registrations
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end

  root "static_pages#landing_page"
  resources :projects
  resources :blogs
  resources :contacts, only: [:new, :create]

  resources :endorsements, only: [:index, :create, :destroy] do
    collection do
      get :edit_multiple
      put :update_multiple
      post :sort
    end
  end

  # For later development, not in use
  get '/about',      to: 'static_pages#about'
  get '/blog',       to: 'static_pages#blog'
  get '/contact',    to: 'contacts#new', as: 'contact'
  get '/resume',     to: 'static_pages#resume'
  post '/contacts',  to: 'contacts#create'
end
