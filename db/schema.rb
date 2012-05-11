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

ActiveRecord::Schema.define(:version => 20120508171548) do

  create_table "events", :force => true do |t|
    t.string   "title"
    t.string   "short_description"
    t.text     "long_description"
    t.boolean  "is_finalized"
    t.string   "bundle_file_name"
    t.string   "bundle_content_type"
    t.integer  "bundle_file_size"
    t.datetime "bundle_updated_at"
    t.datetime "scheduled_at"
    t.datetime "finalized_at"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "submissions", :force => true do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.string   "uid"
    t.text     "description"
    t.string   "archive_file_name"
    t.string   "archive_content_type"
    t.integer  "archive_file_size"
    t.datetime "archive_updated_at"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "full_name"
    t.string   "twitter_handle"
    t.string   "email"
    t.string   "oauth_provider"
    t.string   "oauth_uid"
    t.boolean  "is_admin"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
