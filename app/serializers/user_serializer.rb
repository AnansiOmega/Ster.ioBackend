class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :fname, :lname, :bio, :age, :username

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
  

end
