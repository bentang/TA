class CreateGenreAlbums < ActiveRecord::Migration
  def change
    create_table :genre_albums do |t|
    	t.integer :genre_id
    	t.integer :album_id
      t.timestamps
    end
  end
end
