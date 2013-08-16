class Bill < ActiveRecord::Base
  has_many :votes
end
