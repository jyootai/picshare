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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141024114056) do

  create_table "photos", force: true do |t|
    t.integer  "user_id"
    t.integer  "album_id"
    t.string   "title"
    t.string   "description"
    t.integer  "catigory_id"
    t.string   "tag"
    t.datetime "time"
    t.boolean  "is_public"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  add_index "photos", ["album_id"], name: "index_photos_on_album_id", using: :btree
  add_index "photos", ["catigory_id"], name: "index_photos_on_catigory_id", using: :btree
  add_index "photos", ["tag"], name: "index_photos_on_tag", using: :btree
  add_index "photos", ["title"], name: "index_photos_on_title", using: :btree
  add_index "photos", ["user_id"], name: "index_photos_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "username",                         default: "", null: false
    t.string   "email",                            default: "", null: false
    t.string   "encrypted_password",               default: "", null: false
    t.string   "avatar"
    t.string   "twitter"
    t.string   "city"
    t.string   "bio"
    t.string   "website"
    t.string   "sex",                    limit: 4
    t.string   "title"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",                  default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["title"], name: "index_users_on_title", using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
