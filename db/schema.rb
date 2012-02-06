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

ActiveRecord::Schema.define(:version => 20120206042032) do

  create_table "attachments", :force => true do |t|
    t.integer  "product_id"
    t.string   "file"
    t.integer  "attachable_id"
    t.string   "attachable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.integer  "company_id"
    t.string   "category_name"
    t.string   "category_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ancestry"
  end

  add_index "categories", ["ancestry"], :name => "index_categories_on_ancestry"

  create_table "categories_products", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "product_id"
  end

  create_table "communications", :force => true do |t|
    t.integer  "customer_id"
    t.date     "comm_date"
    t.string   "comm_type"
    t.string   "comm_subject"
    t.string   "comm_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "company_name"
    t.string   "company_address"
    t.string   "post_code"
    t.integer  "phone_number"
    t.integer  "fax_number"
    t.string   "web_url"
    t.string   "email"
    t.string   "vat_no"
    t.float    "vat_rate"
    t.string   "reg_no"
    t.string   "company_number"
    t.string   "currency"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "contacts", :force => true do |t|
    t.integer  "customer_id"
    t.string   "contact_name"
    t.string   "contact_position"
    t.integer  "contact_number"
    t.integer  "contact_mobile_number"
    t.string   "contact_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "credits", :force => true do |t|
    t.integer  "supplier_id"
    t.integer  "credit_limit"
    t.integer  "settlement_due"
    t.integer  "settlement_discount"
    t.integer  "payment_due"
    t.string   "trading_terms"
    t.date     "account_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "company_name"
    t.string   "vat_number"
    t.float    "vat_rate"
    t.string   "gl_code"
    t.string   "acc_noi"
    t.string   "acc_noe"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "credit_limit"
    t.string   "settelment_due"
    t.string   "settelment_discount"
    t.string   "trading_terms"
    t.string   "credit_position"
    t.string   "account_on_hold"
  end

  create_table "discounts", :force => true do |t|
    t.integer  "product_id"
    t.integer  "discount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "privileges", :force => true do |t|
    t.string   "privilege_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "privileges_users", :id => false, :force => true do |t|
    t.integer "privilege_id"
    t.integer "user_id"
  end

  create_table "products", :force => true do |t|
    t.integer  "supplier_id"
    t.integer  "category_id"
    t.string   "product_code"
    t.string   "manufacturer_name"
    t.string   "product_name"
    t.string   "full_description"
    t.string   "status"
    t.string   "image"
    t.string   "set_options"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "sub_categories", :force => true do |t|
    t.integer  "category_id"
    t.string   "sub_category_name"
    t.string   "sub_category_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "supcommunications", :force => true do |t|
    t.integer  "supplier_id"
    t.date     "comm_date"
    t.string   "comm_type"
    t.string   "contact"
    t.string   "comm_subject"
    t.string   "outcome"
    t.integer  "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "supcontacts", :force => true do |t|
    t.integer  "supplier_id"
    t.string   "contact_name"
    t.string   "contact_position"
    t.integer  "contact_number"
    t.integer  "contact_mobile"
    t.integer  "contact_fax"
    t.string   "contact_mail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", :force => true do |t|
    t.integer  "user_id"
    t.string   "account_reference"
    t.string   "company_name"
    t.string   "account_number"
    t.string   "vat_number"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "address_line3"
    t.string   "town"
    t.string   "country"
    t.string   "postcode"
    t.string   "website"
    t.string   "image"
    t.string   "glcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "supplier_image"
  end

  create_table "tiny_prints", :force => true do |t|
    t.string   "image_file_name"
    t.string   "image_file_size"
    t.string   "image_content_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tiny_videos", :force => true do |t|
    t.string   "original_file_name"
    t.string   "original_file_size"
    t.string   "original_content_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uoms", :force => true do |t|
    t.integer  "product_id"
    t.integer  "by_unit"
    t.integer  "by_area"
    t.integer  "by_length"
    t.integer  "by_volume"
    t.integer  "by_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role_id"
    t.integer  "s_id"
    t.integer  "company_id"
    t.string   "first_name"
    t.string   "surname"
    t.string   "job_title"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "address_line3"
    t.string   "city"
    t.string   "postcode"
    t.string   "fix_line"
    t.string   "mobile_number"
    t.string   "county"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "varients", :force => true do |t|
    t.integer  "product_id"
    t.string   "var_name"
    t.integer  "var_length"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
