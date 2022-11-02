Rails.application.routes.draw do

  
  resources :communities
  resources :discussions do
    resources :replies
  end
  resources :votes
  # post "discussion/vote" => "votes#create"

  root 'discussions#index'
  # get "discussion/archive", to: "archive#index"


  match "/404", to: "errors#not_found", via: :all
  devise_for :users, controllers: { registrations: 'registrations'}
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    # get 'discussion/like/:discussion_id' => 'likes#save_like', as: :like_discussion
    # post 'discussion/vote' => 'votes#create'

  end


  get "archive", to: "discussions#archive" 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
