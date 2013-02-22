class Artis < ActiveRecord::Base
  attr_accessible :nama

  
  has_many :albums
  has_many :song_artiss

  has_many :songs, :through => :song_artiss
end
