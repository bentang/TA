class CreateComment < ActiveRecord::Migration
  def change
  	create_table :comment do |t|
  		t.integer :user_id
  		t.text :komentar

  		t.timestamps
  	end
  end
end
