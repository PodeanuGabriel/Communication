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

ActiveRecord::Schema.define(:version => 20130408191327) do

  create_table "mails", :force => true do |t|
    t.string   "from"
    t.string   "to"
    t.string   "content"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "subject"
  end

  create_table "notifications", :force => true do |t|
    t.string   "from"
    t.string   "to"
    t.string   "subject"
    t.string   "content"
    t.string   "interval_type"
    t.integer  "interval"
    t.datetime "begin"
    t.datetime "end"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "reminders", :force => true do |t|
    t.string   "from"
    t.string   "to"
    t.string   "subject"
    t.string   "content"
    t.string   "type"
    t.integer  "interval"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "uid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "first_name"
    t.string   "last_name"
  end

end
