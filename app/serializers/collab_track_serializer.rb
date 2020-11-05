class CollabTrackSerializer < ActiveModel::Serializer
  attributes :id, :genre, :title, :instrument, :track

  # belongs_to :user
  # has_many :songs, through: :song_collabs
  # has_many :users, through: :collab_tracks
  belongs_to :user
  
  has_many :song_collabs
  has_many :songs, through: :song_collabs


  include Rails.application.routes.url_helpers
  
  def track
      rails_blob_path(object.track, only_path: true) if object.track.attached?
  end

end
