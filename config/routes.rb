Rails.application.routes.draw do

  
  devise_for :authors
  resources :interventions
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  
  resources :elevators
  resources :batteries
  resources :customers
  resources :addresses

  resources :columns
  resources :building_details
  resources :buildings

  resource :quotes
  resource :leads

  resource :employees

  ActiveAdmin.routes(self)
  
  get "interventions" => "interventions#index"
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  #admin_root ''

  # GET routes
  get 'quote' => 'quotes#quote'
  get 'corporate' => 'pages#corporate'
  get 'residential' => 'pages#residential'
  get 'index' => 'pages#index'
  get 'admin_root' => 'map#index'
  get 'createIntervention'=> "interventions#createIntervention"
  get 'intervention2'=> "pages#intervention2"
 

  # POST routes

  post 'quote/create' => 'quotes#create'
  post 'contact/create' => 'leads#create'
  post 'createIntervention'=> "interventions#createIntervention"
  post 'intervention' => "interventions#create"
  post 'intervention2'=> "pages#intervention2"
  

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  # post 'pages/twilio' => 'pages#twilio'

scope :api do
    get 'interventions', to: 'interventions#index'
    put 'interventions', to: 'interventions#update'
  end

end

