Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :posts, param: :slug, only: [:create, :show]
      # get '/posts/:slug', to: "posts#show"
    end
  end
end
