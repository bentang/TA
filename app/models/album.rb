class Album < ActiveRecord::Base
  attr_accessible :genre_id, :artis_id, :title, :price, :albumarturl
  validates :price, :format => {:with => /[0-9]+$/}

  belongs_to :artis
  has_many :genres, :through => :genre_albums
  has_many :songs
  has_many :comment
end
