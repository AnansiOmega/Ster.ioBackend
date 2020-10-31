class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre

  has_many :collab_tracks, through: :song_collabs
end
