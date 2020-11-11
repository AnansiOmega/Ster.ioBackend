class SongCollabsController < ApplicationController

    def destroy
        song_collab = SongCollab.find_by(song_collab_params)
        song_collab.destroy
        render json: song_collab, include: '*.*'
    end

    private

    def song_collab_params
        params.permit(:collab_track_id, :song_id)
    end
end
