class Artist < ActiveRecord::Base
  has_many :artworks
end

class Artwork <ActiveRecord::Base
  belongs_to :artist
end