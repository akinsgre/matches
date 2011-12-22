Matches::Application.routes.draw do
  resources :bicycles

  get "welcome/index"


  root :to => 'welcome#index'



end
