class User < ApplicationRecord
    has_secure_password
    has_many :collab_tracks
    has_many :song_collabs, through: :collab_tracks
    has_many :songs, through: :song_collabs
end
