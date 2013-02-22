class CreateSongArtis < ActiveRecord::Migration
  def change
    create_table :song_artis do |t|
    	t.integer :artis_id
    	t.integer :song_id
      t.timestamps
    end
  end
end
