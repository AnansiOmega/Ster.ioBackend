class CollabTracksController < ApplicationController

    def index
        collab_tracks = CollabTrack.all
        render json: collab_tracks
    end

    def create
        collabTrack = CollabTrack.create(collab_params)
        render json: collabTrack
    end

    def destroy
        collabTrack =  CollabTrack.find(params[:id])
        collabTrack.destroy
        Song.find_empty_songs.destroy_all
        render json: collabTrack
    end







    private

    def collab_params
        params.permit(:title, :genre, :instrument, :track, :user_id)
    end
end
