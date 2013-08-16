class Vote < ActiveRecord::Base
  belongs_to :legislator
  belongs_to :bill
end
