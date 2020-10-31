# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
CollabTrack.destroy_all
Song.destroy_all
SongCollab.destroy_all
puts 'seedddiiinnnggg'
# create_table "collab_tracks", force: :cascade do |t|
#     t.string "instrument"
#     t.string "title"
#     t.string "genre"
#     t.integer "user_id"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

#   create_table "song_collabs", force: :cascade do |t|
#     t.integer "collabTrack_id"
#     t.integer "song_id"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end


#   create_table "songs", force: :cascade do |t|
#     t.string "title"
#     t.string "genre"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

#   create_table "users", force: :cascade do |t|
#     t.string "username"
#     t.string "fname"
#     t.string "lname"
#     t.integer "age"
#     t.string "email"
#     t.string "password_digest"
#     t.text "bio"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end
# User.create(username: 'Iggs', fname: 'Ignas', lname: 'Butautas', age: 24, email: 'iggs@gmail.com', password: '123', bio: 'hi there')

puts 'seeeddddeeeedddd'