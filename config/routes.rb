Rails.application.routes.draw do
  post 'picture/upload'

  get 'picture/up'

  get 'sessions/new', :as => 'login'
  get 'login' => 'sessions#new'

  post 'sessions/create'

  post 'applicants/show'

  get 'applicants/new'

  get 'sessions/destroy'

  post 'applicants/create'

  post 'applicants/love'

  get 'welcome/index'
  root :to => 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
