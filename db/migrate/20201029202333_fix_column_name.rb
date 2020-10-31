class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :song_collabs, :collabTrack_id, :collab_track_id
  end
end