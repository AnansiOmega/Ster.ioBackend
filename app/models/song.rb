class Song < ApplicationRecord
    has_many :song_collabs, dependent: :destroy
    has_many :collab_tracks, through: :song_collabs
    has_many :users, through: :collab_tracks



    def self.find_empty_songs
        Song.includes(:song_collabs).where( :song_collabs => { :song_id => nil } )
    end

    def self.find_songs_with_one_track
        song_ids = Song.joins(:song_collabs).group('song_id').having('COUNT(song_id) = 1').count.keys
        song_ids.each {|id| Song.find(id).destroy }
    end

    
end
