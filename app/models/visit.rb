class Visit < ActiveRecord::Base
  belongs_to :guest
  belongs_to :user
  belongs_to :unit
  attr_accessible :checkin, :duration
end
