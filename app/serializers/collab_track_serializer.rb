class CollabTrackSerializer < ActiveModel::Serializer
  attributes :id, :genre, :title, :instrument, :track
  belongs_to :user

  include Rails.application.routes.url_helpers
  
  def track
      rails_blob_path(object.track, only_path: true) if object.track.attached?
  end


end
