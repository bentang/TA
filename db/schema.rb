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

ActiveRecord::Schema.define(:version => 20130222191044) do

  create_table "albums", :force => true do |t|
    t.integer  "artis_id"
    t.string   "title"
    t.decimal  "price",       :precision => 10, :scale => 0
    t.string   "albumarturl"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "artis", :force => true do |t|
    t.string   "nama"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comment", :force => true do |t|
    t.integer  "user_id"
    t.text     "komentar"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "genre", :force => true do |t|
    t.integer  "album_id"
    t.string   "nama"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "genre_albums", :force => true do |t|
    t.integer  "genre_id"
    t.integer  "album_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "song_artis", :force => true do |t|
    t.integer  "artis_id"
    t.integer  "song_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "songs", :force => true do |t|
    t.integer  "artis_id"
    t.integer  "album_id"
    t.integer  "number_song"
    t.string   "time"
    t.integer  "comment_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
