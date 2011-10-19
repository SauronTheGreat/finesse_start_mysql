FinesseStartMysql::Application.routes.draw do
  resources :default_player_data

  resources :players

  resources :player_financials

  resources :imports

  resources :games

  resources :student_group_users

  resources :round_loans

  resources :loan_types

  resources :investment_types

  resources :round_expenses

  resources :employees

  resources :employee_categories

  resources :constants

  resources :round_investments

  resources :media_plan_details

  resources :media_plans

  resources :impacts

  resources :units

  resources :expense_types

  resources :hrincentives

  resources :simulation_decision_parameters

  resources :simulation_markets

  resources :simulation_factories

  resources :student_groups

  resources :facilitator_groups

  resources :product_parameters

  resources :raw_materials

  resources :products

  resources :mathematical_model_variable_values

  resources :available_decision_parameters

  resources :mathematical_model_constant_values

  resources :mathematical_model_variables

  resources :mathematical_model_constants

  resources :round_environmental_parameters

  resources :expense_options

  resources :expenses

  resources :case_studies

  resources :player_investments

  resources :investments

  resources :player_loans

  resources :loans

  resources :media

  resources :consumer_brand_selection_parameters

  resources :brand_selection_parameters

  resources :consumer_media_preferences

  resources :consumer_categories

  resources :consumers

  resources :vendors

  resources :dealer_categories

  resources :dealer_push_indices

  resources :dealers

  resources :market_consumer_categories

  resources :market_distances

  resources :factories

  resources :markets

  resources :rounds

  resources :simulations

  resources :mathematical_model_inputs

  resources :mathematical_models

  resources :decision_parameters

  resources :environmental_parameters

  resources :facilitators

  resources :clients

  devise_for :users

  root :to=>'welcome#index'


  match "define_constant_value"=>'decision_parameters#define_constant_value'
  match "set_constant_value"=>'decision_parameters#set_constant_value'
 match "define_variable_values"=>'decision_parameters#define_variable_values'
 match "set_variable_values"=>'decision_parameters#set_variable_values'
  match 'details'=>'decision_parameters#view_details'
 match 'view_parameters'=>'products#view_parameters'
  match 'view_expenses'=>'expenses#view_expenses'
  match 'view_distances'=>'markets#view_distances'
  match 'initiate_game'=>'games#initiate_game'




  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
