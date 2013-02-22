class CreateAlbum < ActiveRecord::Migration
  def change
 		create_table :albums do |t|
 			t.integer :genre_id
 			t.integer :artis_id
 			t.string :title
 			t.decimal :price
 			t.string :albumarturl

 			 t.timestamps
  end
end
end
