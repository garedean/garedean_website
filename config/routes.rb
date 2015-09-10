Rails.application.routes.draw do
  devise_for :users, :skip => :registrations
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end

  root "static_pages#landing_page"

  resources :blogs

  resources :projects do
    collection do
      get :edit_multiple
      put :update_multiple
    end
  end

  resources :endorsements, only: [:index, :create, :destroy] do
    collection do
      get :edit_multiple
      put :update_multiple
    end
  end

  get '/about',      to: 'static_pages#about'
  get '/blog',       to: 'static_pages#blog'
  get '/resume',     to: 'static_pages#resume'
end
