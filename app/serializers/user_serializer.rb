class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :fname, :lname, :bio, :age, :username, :image

  # def collab_tracks
  #   object.collab_tracks.map{|track| CollabTrackSerializer.new(track)}
  # end


  # has_many :collab_tracks
  # has_many :song_collabs, through: :collab_tracks
  # has_many :songs, through: :song_collabs
  has_many :songs
  has_many :collab_tracks
  # has_many :song_collabs, through: :collab_tracks
  # has_many :songs, through: :song_collabs
  

  include Rails.application.routes.url_helpers
  
  def image
      rails_blob_path(object.image, only_path: true) if object.image.attached?
  end


end
