class CollabTrack < ApplicationRecord
    has_one_attached :track
    belongs_to :user
    has_many :song_collabs, dependent: :destroy
    has_many :songs, through: :song_collabs
    
end

