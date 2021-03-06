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

ActiveRecord::Schema.define(:version => 20130527204314) do

  create_table "communities", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.integer  "customer_id"
    t.string   "website"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "communities", ["customer_id"], :name => "index_communities_on_customer_id"

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "billing_address"
    t.string   "website"
    t.string   "contact"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "guests", :force => true do |t|
    t.string   "name"
    t.integer  "ident_id"
    t.boolean  "permanent"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "guests", ["ident_id"], :name => "index_guests_on_ident_id"

  create_table "idents", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "community_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "role"
  end

  add_index "idents", ["community_id"], :name => "index_idents_on_community_id"
  add_index "idents", ["user_id"], :name => "index_idents_on_user_id"

  create_table "instances", :force => true do |t|
    t.integer  "unit_id"
    t.integer  "ident_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "instances", ["ident_id"], :name => "index_instances_on_ident_id"
  add_index "instances", ["unit_id"], :name => "index_instances_on_unit_id"

  create_table "permanent_guests", :force => true do |t|
    t.string   "permanent_guest_name"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "units", :force => true do |t|
    t.string   "address"
    t.string   "name"
    t.integer  "community_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.boolean  "occupied"
  end

  add_index "units", ["community_id"], :name => "index_units_on_community_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "selected"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vendors", :force => true do |t|
    t.string   "vendor_name"
    t.date     "arrival_date"
    t.boolean  "access_frequency"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "visits", :force => true do |t|
    t.datetime "checkin"
    t.integer  "duration"
    t.integer  "guest_id"
    t.integer  "ident_id"
    t.integer  "unit_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "visits", ["guest_id"], :name => "index_visits_on_guest_id"
  add_index "visits", ["ident_id"], :name => "index_visits_on_ident_id"
  add_index "visits", ["unit_id"], :name => "index_visits_on_unit_id"

end
