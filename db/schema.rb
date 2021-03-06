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

ActiveRecord::Schema.define(:version => 20130712142902) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "acquired_skills", :force => true do |t|
    t.integer "user_id",                 :null => false
    t.integer "skill_id",                :null => false
    t.integer "experience", :limit => 2
    t.integer "level",      :limit => 1
  end

  add_index "acquired_skills", ["skill_id"], :name => "index_acquired_skills_on_skill_id"
  add_index "acquired_skills", ["user_id"], :name => "index_acquired_skills_on_user_id"

  create_table "educations", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.string   "school"
    t.date     "begin_on"
    t.date     "end_on"
    t.string   "degree"
    t.string   "major"
    t.string   "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "educations", ["user_id"], :name => "index_educations_on_user_id"

  create_table "experiences", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.string   "company"
    t.string   "industry"
    t.string   "department"
    t.date     "begin_on"
    t.date     "end_on"
    t.string   "title"
    t.text     "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "experiences", ["user_id"], :name => "index_experiences_on_user_id"

  create_table "projects", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.string   "name"
    t.date     "begin_on"
    t.date     "end_on"
    t.text     "summary"
    t.text     "duty"
    t.text     "platform"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["user_id"], :name => "index_projects_on_user_id"

  create_table "skills", :force => true do |t|
    t.string "name"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.boolean  "gender"
    t.date     "birth_on"
    t.date     "work_on"
    t.integer  "degree",          :limit => 1
    t.string   "email"
    t.string   "phone"
    t.string   "qq"
    t.string   "msn"
    t.string   "city"
    t.string   "address"
    t.string   "hukou"
    t.string   "family_tel"
    t.string   "company"
    t.string   "title"
    t.string   "industry"
    t.string   "website"
    t.text     "self_intro"
    t.text     "contact_records"
    t.integer  "score",           :limit => 1
    t.string   "source"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
