Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # defaults to dashboard
  root :to => redirect('/dashboard/dashboard_v1')

  # view routes
  get '/widgets' => 'widgets#index'

  get 'dashboard/dashboard_v1'
  get 'elements/button'
  get 'elements/notification'
  get 'elements/spinner'
  get 'elements/animation'
  get 'elements/dropdown'
  get 'elements/nestable'
  get 'elements/sortable'
  get 'elements/panel'
  get 'elements/portlet'
  get 'elements/grid'
  get 'elements/gridmasonry'
  get 'elements/typography'
  get 'elements/fonticons'
  get 'elements/weathericons'
  get 'elements/colors'
  get 'elements/buttons'
  get 'elements/notifications'
  get 'elements/carousel'
  get 'elements/tour'
  get 'elements/sweetalert'
  get 'forms/standard'
  get 'forms/extended'
  get 'forms/validation'
  get 'forms/wizard'
  get 'forms/upload'
  get 'forms/xeditable'
  get 'forms/imgcrop'
  get 'tables/standard'
  get 'tables/extended'
  get 'tables/datatable'
  get 'tables/jqgrid'
  get 'pages/template'
  get 'pages/notfound'
  get 'pages/error500'

  # api routes
  get '/api/datatable' => 'api#datatable'
  get '/api/jqgrid' => 'api#jqgrid'
  get '/api/jqgridtree' => 'api#jqgridtree'
  get '/api/i18n/:locale' => 'api#i18n'
  post '/api/xeditable' => 'api#xeditable'
  get '/api/xeditable-groups' => 'api#xeditablegroups'

  # the rest goes to root
  get '*path' => redirect('/')
end
