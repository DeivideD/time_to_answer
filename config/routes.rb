Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
  end
  namespace :users_backoffice do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index' # Dashboard
    get '/', to: 'welcome#index' # Dashboard
    get '/questions/show', to: 'questions#show' 
    resources :admins
    resources :subjects
    resources :questions
  end
  
  devise_for :admins
  devise_for :users
 
  get 'inicio', to: 'site/welcome#index'

  root to: 'site/welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
