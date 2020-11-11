class CollabTracksController < ApplicationController

    def index
        collab_tracks = CollabTrack.all
        render json: collab_tracks
    end

    def create
        if params[:track] == ''
            render json: { errors: ['Track cannot be empty'] }
        else
        collab_track = CollabTrack.create(collab_params)
        if collab_track.valid?
            render json: collab_track
        else
            render json: { errors: collab_track.errors.full_messages }
        end
        end
    end


    def destroy
        collabTrack =  CollabTrack.find(params[:id])
        collabTrack.destroy
        render json: collabTrack
    end







    private

    def collab_params
        params.permit(:title, :genre, :instrument, :track, :user_id)
    end
end
