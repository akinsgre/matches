Matches::Application.routes.draw do

  get "temps/data"
  resources :temps

  resources :customers

  get "welcome/index"

  root :to => 'welcome#index'

end
