class CreateArtis < ActiveRecord::Migration
 	def change
 		create_table :artis do |t|
 			t.string :nama

 			 t.timestamps
  end
end
end
