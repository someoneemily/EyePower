Rails.application.routes.draw do
  get 'welcome/index'
  resources :pages
  resources :options
  get '/choiceA' => 'welcome#choiceA'
  get '/choiceB' => 'welcome#choiceB'
  get '/choiceC' => 'welcome#choiceC'

  get '/choiceD' => 'welcome#choiceD'

  get '/visuals' => 'visuals#index'
  get '/visuals/weather' => 'visuals#weather'
  get '/visuals/photos' => 'visuals#photos'

  get '/words' => 'words#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'

end
