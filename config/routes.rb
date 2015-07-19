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

  resources :references, only: [:index, :create, :destroy] do
    collection do
      get :edit_multiple
      put :update_multiple
      post :sort
    end
  end

  #get 'references/all/edit', to: 'references#edit_all', :as => :edit_all
  #put 'references/all' => 'references#update_all', :as => :update_all

  # For later development, not in use
  get '/about',      to: 'static_pages#about'
  get '/blog',       to: 'static_pages#blog'
  get '/contact',    to: 'static_pages#contact'


end
