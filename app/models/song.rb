class Song < ActiveRecord::Base
  attr_accessible :artis_id, :album_id, :number_song, :time, :comment_id
  
  belongs_to :album
  
  has_many :song_artiss

end
