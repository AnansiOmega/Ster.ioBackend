class CollabTrack < ApplicationRecord
    has_one_attached :track
    belongs_to :user
    has_many :song_collabs
    has_many :songs, through: :song_collabs
    
end

