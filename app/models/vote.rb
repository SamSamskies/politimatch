class Vote < ActiveRecord::Base
  belongs_to :legislator
  belongs_to :bill
  validates :legislator_id, uniqueness: { scope: :bill_id }
end
