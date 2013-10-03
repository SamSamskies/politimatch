class Bill < ActiveRecord::Base
  has_many :votes
  validates :openstates_uid, uniqueness: true
end
