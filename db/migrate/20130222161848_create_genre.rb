class CreateGenre < ActiveRecord::Migration
  def change
 		create_table :genre do |t|
 			t.integer :album_id
 			t.string :nama
 			t.text :description

 			 t.timestamps
  end
end
end
