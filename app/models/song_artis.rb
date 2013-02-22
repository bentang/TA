class SongArtis < ActiveRecord::Base
  attr_accessible :artis_id, :song_id

  belongs_to :artis
  belongs_to :song
end
