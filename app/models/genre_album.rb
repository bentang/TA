class GenreAlbum < ActiveRecord::Base
   attr_accessible :genre_id, :album_id

   belongs_to :album
   belongs_to :song
end
