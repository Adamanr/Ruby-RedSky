Rails.application.routes.draw do
  devise_for :users
  resource :page
  resource :post
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get '/articles',to:"pages#articles"
  get '/profile',to:"pages#profile"
  get '/price',to:"pages#price"
  get '/posts',to:"posts#index"

  match '/posts', to: 'posts#index', via: [:get, :post]
  post '/posts/new',to:"posts#new"
  root "pages#index"
end
