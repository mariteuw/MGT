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

ActiveRecord::Schema.define(:version => 20130519161947) do

  create_table "m_categories", :force => true do |t|
    t.string   "name_M_Categor"
    t.string   "img_M_Categor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "m_cities", :force => true do |t|
    t.string   "name_M_Cit"
    t.integer  "id_country_M_Cit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "m_contacts", :force => true do |t|
    t.string   "hometown_M_Contact"
    t.string   "address1_M_Contact"
    t.string   "address_M_Contact"
    t.string   "ccity_M_Contact"
    t.string   "ccountries_M_Contact"
    t.string   "cstate_M_Contact"
    t.string   "zip_M_Contact"
    t.string   "homephone_M_Contact"
    t.string   "cellphone_M_Contact"
    t.string   "webpage_M_Contact"
    t.string   "email_M_Contact"
    t.string   "date_M_Contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "m_countries", :force => true do |t|
    t.string   "name_M_Countries"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "m_friends", :force => true do |t|
    t.integer  "id_sender_M_Friends"
    t.integer  "id_receiver_M_Friends"
    t.integer  "status_M_Friends"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "m_generals", :force => true do |t|
    t.string   "gender_M_General"
    t.string   "relation_M_General"
    t.string   "state_M_General"
    t.string   "postal_code_M_General"
    t.string   "about_M_General"
    t.string   "email_M_General"
    t.string   "date_M_General"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "m_preferences", :force => true do |t|
    t.string   "bar_M_Preference"
    t.string   "fashion_M_Preference"
    t.string   "events_M_Preference"
    t.string   "beauty_M_Preference"
    t.string   "luxury_M_Preference"
    t.string   "email_M_Preference"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "m_professionels", :force => true do |t|
    t.string   "high_school_M_Professionel"
    t.string   "college_M_Professionel"
    t.string   "major_M_Professionel"
    t.string   "degre_M_Professionel"
    t.string   "occupation_M_Professionel"
    t.string   "industry_M_Professionel"
    t.string   "email_M_Professionel"
    t.string   "date_M_Professionel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "m_ratings", :force => true do |t|
    t.integer  "rating_M_Rating"
    t.string   "date_M_Rating"
    t.integer  "id_user_M_Rating"
    t.string   "id_tip_M_Rating"
    t.integer  "id_owner_M_Rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "m_registers", :force => true do |t|
    t.integer  "id_city_M_Register"
    t.string   "fname_M_Register"
    t.string   "lname_M_Register"
    t.string   "date_bith_M_Register"
    t.string   "countrie_M_Register"
    t.string   "email_M_Register"
    t.string   "pic_M_Register"
    t.string   "date_today_M_Register"
    t.string   "pass_M_Register"
    t.string   "adresse1_M_Register"
    t.integer  "status_M_Register"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "m_shares", :force => true do |t|
    t.integer  "id_sender_M_Share"
    t.integer  "id_recever_M_Share"
    t.integer  "id_tip_M_Share"
    t.string   "date_M_Share"
    t.string   "msg_M_Share"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "m_sub_categories", :force => true do |t|
    t.string   "name_M_SubCategories"
    t.string   "img_M_SubCategories"
    t.integer  "id_cat_M_SubCategories"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "m_tips", :force => true do |t|
    t.string   "title_M_Tips"
    t.string   "date_M_Tips"
    t.string   "description_M_Tips"
    t.string   "img_M_Tips"
    t.string   "address_M_Tips"
    t.integer  "id_city_M_Tips"
    t.integer  "id_subcat_M_Tips"
    t.integer  "id_user_M_Tips"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
