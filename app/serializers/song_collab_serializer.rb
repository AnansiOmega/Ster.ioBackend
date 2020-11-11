class SongCollabSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :collab_track
  belongs_to :song

end
