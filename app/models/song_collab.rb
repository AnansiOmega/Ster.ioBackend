class SongCollab < ApplicationRecord
    belongs_to :collab_track
    belongs_to :song



    def self.create_association(song_id , ids)
        ids.each { |id| SongCollab.find_or_create_by(song_id: song_id, collab_track_id: id ) }
    end

end

