Rails.application.routes.draw do
  devise_for :users
  resources :posts do
  	member do
  	  get "like", to: "post#upvote"
      get "dislike", to: "post#downvote"
    end
  	resources :comments
  end

  root 'posts#index'
end
