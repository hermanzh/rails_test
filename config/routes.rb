Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :groups do
    member do
      post :join
      post :quit # quite_group POST /groups/:id/quit(.:format) groups#quit
    end
    resources :posts
    # resources :posts do
    #   collection do
    #     get :hot   => hot_group_posts GET /groups/:group_id/posts/hot(.:format) posts#hot
    #   end
    # end
  end

  get 'name_child', to: 'name_child#home'
  get '/api' => redirect('/swagger/index.html?url=/api/api-docs.json')

  get '/api/post/posts/list(/:page)', to: 'api/post/post#list', as: 'api_post_post_list'

  namespace :account do
    resources :groups
    resources :posts
  end

  root 'groups#index'
end
