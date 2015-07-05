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

ActiveRecord::Schema.define(version: 20150524005114) do

  create_table "blogs", force: :cascade do |t|
    t.string   "title",                limit: 255
    t.text     "content",              limit: 65535
    t.datetime "date"
    t.string   "publisher",            limit: 255
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "isType",               limit: 255
    t.string   "tagLine",              limit: 255
    t.string   "mainImg_file_name",    limit: 255
    t.string   "mainImg_content_type", limit: 255
    t.integer  "mainImg_file_size",    limit: 4
    t.datetime "mainImg_updated_at"
    t.text     "tags",                 limit: 65535
    t.boolean  "show",                 limit: 1
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",    limit: 255, null: false
    t.string   "data_content_type", limit: 255
    t.integer  "data_file_size",    limit: 4
    t.integer  "assetable_id",      limit: 4
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width",             limit: 4
    t.integer  "height",            limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "courses", force: :cascade do |t|
    t.string   "title",                limit: 255
    t.string   "courseID",             limit: 255
    t.text     "summary",              limit: 65535
    t.string   "college",              limit: 255
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "mainImg_file_name",    limit: 255
    t.string   "mainImg_content_type", limit: 255
    t.integer  "mainImg_file_size",    limit: 4
    t.datetime "mainImg_updated_at"
    t.string   "img1_file_name",       limit: 255
    t.string   "img1_content_type",    limit: 255
    t.integer  "img1_file_size",       limit: 4
    t.datetime "img1_updated_at"
    t.string   "img2_file_name",       limit: 255
    t.string   "img2_content_type",    limit: 255
    t.integer  "img2_file_size",       limit: 4
    t.datetime "img2_updated_at"
    t.string   "img3_file_name",       limit: 255
    t.string   "img3_content_type",    limit: 255
    t.integer  "img3_file_size",       limit: 4
    t.datetime "img3_updated_at"
    t.string   "img4_file_name",       limit: 255
    t.string   "img4_content_type",    limit: 255
    t.integer  "img4_file_size",       limit: 4
    t.datetime "img4_updated_at"
    t.string   "img5_file_name",       limit: 255
    t.string   "img5_content_type",    limit: 255
    t.integer  "img5_file_size",       limit: 4
    t.datetime "img5_updated_at"
    t.string   "timeOffered",          limit: 255
    t.string   "location",             limit: 255
    t.string   "website",              limit: 255
    t.string   "syllabus",             limit: 255
    t.text     "collaborators",        limit: 65535
    t.boolean  "show",                 limit: 1
    t.string   "auxTitle",             limit: 255
    t.text     "aux",                  limit: 65535
    t.string   "pdf_file_name",        limit: 255
    t.string   "pdf_content_type",     limit: 255
    t.integer  "pdf_file_size",        limit: 4
    t.datetime "pdf_updated_at"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title",                limit: 255
    t.text     "summary",              limit: 65535
    t.string   "category",             limit: 255
    t.text     "client",               limit: 65535
    t.string   "playLink",             limit: 255
    t.string   "videoLink",            limit: 255
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "mainImg_file_name",    limit: 255
    t.string   "mainImg_content_type", limit: 255
    t.integer  "mainImg_file_size",    limit: 4
    t.datetime "mainImg_updated_at"
    t.string   "img1_file_name",       limit: 255
    t.string   "img1_content_type",    limit: 255
    t.integer  "img1_file_size",       limit: 4
    t.datetime "img1_updated_at"
    t.string   "img2_file_name",       limit: 255
    t.string   "img2_content_type",    limit: 255
    t.integer  "img2_file_size",       limit: 4
    t.datetime "img2_updated_at"
    t.string   "img3_file_name",       limit: 255
    t.string   "img3_content_type",    limit: 255
    t.integer  "img3_file_size",       limit: 4
    t.datetime "img3_updated_at"
    t.string   "img4_file_name",       limit: 255
    t.string   "img4_content_type",    limit: 255
    t.integer  "img4_file_size",       limit: 4
    t.datetime "img4_updated_at"
    t.string   "img5_file_name",       limit: 255
    t.string   "img5_content_type",    limit: 255
    t.integer  "img5_file_size",       limit: 4
    t.datetime "img5_updated_at"
    t.date     "pubDate"
    t.string   "location",             limit: 255
    t.text     "collaborators",        limit: 65535
    t.boolean  "inProgress",           limit: 1
    t.boolean  "show",                 limit: 1
    t.string   "auxTitle",             limit: 255
    t.text     "aux",                  limit: 65535
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role",                   limit: 255
    t.string   "avatar_file_name",       limit: 255
    t.string   "avatar_content_type",    limit: 255
    t.integer  "avatar_file_size",       limit: 4
    t.datetime "avatar_updated_at"
    t.string   "firstName",              limit: 255
    t.string   "lastName",               limit: 255
    t.text     "bio",                    limit: 65535
    t.boolean  "show",                   limit: 1
    t.string   "website",                limit: 255
    t.string   "category",               limit: 255
    t.string   "job",                    limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
