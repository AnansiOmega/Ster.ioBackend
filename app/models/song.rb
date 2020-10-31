class Song < ApplicationRecord
    has_many :song_collabs
    has_many :collab_tracks, through: :song_collabs
end
