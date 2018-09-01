Rails.application.routes.draw do
 resources :kitten
 get 'kitten/index'
 get 'kitten/new'
 get 'kitten/show'
 get 'kitten/edit'
root 'kitten#index' 
end
