class CreateSongCollabs < ActiveRecord::Migration[6.0]
  def change
    create_table :song_collabs do |t|
      t.integer :collabTrack_id
      t.integer :song_id
      t.timestamps
    end
  end
end
