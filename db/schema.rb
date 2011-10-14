# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111014064524) do

  create_table "brand_selection_parameters", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "case_studies", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "rounds"
    t.integer  "players"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "client_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consumer_brand_selection_parameters", :force => true do |t|
    t.integer  "brand_selection_parameter_id"
    t.integer  "min_value"
    t.integer  "max_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consumer_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consumer_media_preferences", :force => true do |t|
    t.integer  "media_id"
    t.integer  "consumer_category_id"
    t.integer  "index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consumers", :force => true do |t|
    t.integer  "consumer_category_id"
    t.integer  "dealer_id"
    t.integer  "personal_taste"
    t.integer  "final_decision"
    t.integer  "probability_of_purchase"
    t.integer  "media_preference"
    t.integer  "media_impact"
    t.integer  "brand_power"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dealer_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dealer_push_indices", :force => true do |t|
    t.integer  "dealer_id"
    t.integer  "brand_id"
    t.integer  "push_index_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dealers", :force => true do |t|
    t.string   "name"
    t.integer  "market_id"
    t.integer  "catchment_of_consumers"
    t.integer  "desired_commission"
    t.integer  "final_commission"
    t.integer  "dealer_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "decision_parameters", :force => true do |t|
    t.integer  "value"
    t.integer  "mathematical_model_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "environmental_parameters", :force => true do |t|
    t.string   "name"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expense_options", :force => true do |t|
    t.string   "name"
    t.integer  "expense_id"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expenses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facilitators", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "factories", :force => true do |t|
    t.string   "name"
    t.integer  "number_of_employees"
    t.integer  "market_id"
    t.integer  "number_of_shifts"
    t.integer  "cost_to_build"
    t.integer  "cost_to_run"
    t.integer  "capacity"
    t.integer  "production_time_per_unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "investments", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "roi"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loans", :force => true do |t|
    t.string   "type"
    t.integer  "tenure"
    t.integer  "interest_rate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "market_consumer_categories", :force => true do |t|
    t.integer  "market_id"
    t.integer  "consumer_category_id"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "market_distances", :force => true do |t|
    t.integer  "source_market_id"
    t.integer  "distance_market_id"
    t.integer  "distance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "markets", :force => true do |t|
    t.string   "name"
    t.integer  "catchment_of_dealers"
    t.integer  "catchment_of_vendors"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mathematical_model_constant_values", :force => true do |t|
    t.integer  "mathematical_model_constant_id"
    t.integer  "value"
    t.integer  "decision_parameter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mathematical_model_constants", :force => true do |t|
    t.integer  "mathematical_model_id"
    t.string   "constant_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mathematical_model_inputs", :force => true do |t|
    t.integer  "mathematical_model_id"
    t.integer  "environmental_parameter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mathematical_model_variable_values", :force => true do |t|
    t.integer  "environmental_parameter_id"
    t.integer  "decision_parameter_id"
    t.integer  "mathematical_model_variable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mathematical_model_variables", :force => true do |t|
    t.integer  "mathematical_model_id"
    t.string   "variable_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mathematical_models", :force => true do |t|
    t.string   "name"
    t.string   "formula"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "number_of_constants"
    t.integer  "number_of_variables"
  end

  create_table "media", :force => true do |t|
    t.string   "name"
    t.integer  "cost"
    t.integer  "impact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_investments", :force => true do |t|
    t.integer  "player_id"
    t.integer  "investment_id"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_loans", :force => true do |t|
    t.integer  "player_id"
    t.integer  "loan_id"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_parameters", :force => true do |t|
    t.integer  "product_id"
    t.integer  "raw_material_id"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "number_of_parameters"
  end

  create_table "raw_materials", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "round_environmental_parameters", :force => true do |t|
    t.integer  "round"
    t.integer  "environmental_parameter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rounds", :force => true do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "simulations", :force => true do |t|
    t.string   "name"
    t.integer  "facilitator_id"
    t.integer  "max_players"
    t.integer  "max_rounds"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "admin"
    t.boolean  "superadmin"
    t.boolean  "facilitator"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vendors", :force => true do |t|
    t.string   "name"
    t.integer  "market_id"
    t.integer  "raw_material_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
