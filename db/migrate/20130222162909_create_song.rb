class CreateSong < ActiveRecord::Migration
 def change
 	create_table :songs do |t|
 		t.integer :artis_id
 		t.integer :album_id
 		t.integer :number_song
 		t.string  :time
 		t.integer :comment_id

 		t.timestamps
 	end
 end
end
