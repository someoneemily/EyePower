Rails.application.routes.draw do
  get 'welcome/index'
  resources :pages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'

end