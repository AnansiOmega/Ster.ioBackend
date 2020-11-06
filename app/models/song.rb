class Song < ApplicationRecord
    has_many :song_collabs, dependent: :destroy
    has_many :collab_tracks, through: :song_collabs
    has_many :users, through: :collab_tracks



    def self.find_empty_songs
        Song.includes(:song_collabs).where( :song_collabs => { :song_id => nil } )
    end
end
