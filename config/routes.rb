Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts

  get '/posts/all', :to => 'posts#index', :as => 'all'

   resources :gender , path: '/admin/gender/'

#  get '/admin/gender/all', :to => 'gender#index', :as => 'genderall'
end
