class Comment < ActiveRecord::Base
  attr_accessible :user_id, :komentar

  belongs_to :album
end
