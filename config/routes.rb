Rails.application.routes.draw do
  devise_for :users
  resource :page
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get '/articles',to:"pages#articles"
  get '/profile',to:"pages#profile"
  root "pages#index"
end
