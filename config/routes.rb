Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'pages/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get 'blog/:id', to: "pages#single_post"

  namespace :api, defaults: { format: :json } do
    namespace :v1, defaults: { format: :json } do
      get '/blogs', to: 'blogs#blogs_json'
      get '/single-post/:id', to: 'blogs#single_post_json'
    end
  end
end
