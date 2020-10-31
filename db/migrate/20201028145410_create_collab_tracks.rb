class CreateCollabTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :collab_tracks do |t|
      t.string :instrument
      t.string :title
      t.string :genre
      t.integer :user_id

      t.timestamps
    end
  end
end
