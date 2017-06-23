Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # defaults to dashboard
  root :to => redirect('/boxes')

  resources :boxes

  # view routes
  get '/widgets' => 'widgets#index'

  get 'dashboard/dashboard_v1'
  get '/api/i18n/:locale' => 'api#i18n'

  # the rest goes to root
  get '*path' => redirect('/')
end
