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

ActiveRecord::Schema.define(:version => 20130509101444) do

  create_table "admins", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "deliveries", :force => true do |t|
    t.integer  "user_id"
    t.integer  "admin_id"
    t.string   "name"
    t.integer  "number"
    t.string   "start"
    t.string   "finish"
    t.string   "content"
    t.string   "city"
    t.float    "weight"
    t.float    "price",      :default => 1.0
    t.boolean  "road",       :default => false
    t.boolean  "end",        :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "deliveries", ["admin_id"], :name => "index_deliveries_on_admin_id"
  add_index "deliveries", ["user_id"], :name => "index_deliveries_on_user_id"

  create_table "orders", :force => true do |t|
    t.integer  "user_id"
    t.integer  "admin_id"
    t.string   "name"
    t.integer  "number"
    t.string   "start"
    t.string   "finish"
    t.string   "content"
    t.boolean  "road",       :default => false
    t.boolean  "end",        :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "orders", ["admin_id"], :name => "index_orders_on_admin_id"
  add_index "orders", ["user_id"], :name => "index_orders_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "username"
    t.string   "password"
    t.float    "salary"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
