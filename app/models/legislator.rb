class Legislator < ActiveRecord::Base
  has_many :votes
  validates :leg_id, uniqueness: true
end
