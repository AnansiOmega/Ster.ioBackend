class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :fname, :lname, :bio, :age, :username, :image

  has_many :songs
  has_many :collab_tracks
  

  include Rails.application.routes.url_helpers
  
  def image
      rails_blob_path(object.image, only_path: true) if object.image.attached?
  end


end
