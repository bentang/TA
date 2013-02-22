class Genre < ActiveRecord::Base
  attr_accessible :album_id, :nama, :description

  has_many :genre_albums
  belongs_to :album
  
end
