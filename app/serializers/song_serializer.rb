class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre

  has_many :song_collabs
  has_many :collab_tracks, through: :song_collabs
  has_many :users, through: :collab_tracks

  
end
