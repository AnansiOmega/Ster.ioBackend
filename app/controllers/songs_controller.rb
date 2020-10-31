class SongsController < ApplicationController

    def index
        songs = Song.all
        render json: songs
    end

    def create
        song = Song.create(song_params(:title,:genre))
        collab_id_1 = song_params(:collab_track_id)
        collab_id_2 = song_params(:original_collab_track_id)
        SongCollab.create_association(song.id, [collab_id_1[:collab_track_id], collab_id_2[:original_collab_track_id]])
    end

    def song_collab
        song = Song.create(song_params(:title,:genre))
        ids = params[:collabIds] + ',' + params[:collab_track_id]
        id_array = ids.split(',')
        SongCollab.create_association(song.id, id_array)
    end



    private

    def song_params(*args)
        params.permit(args)
    end
end
