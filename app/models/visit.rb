class Visit < ActiveRecord::Base
  belongs_to :guest
  belongs_to :ident
  belongs_to :community
  belongs_to :unit
  attr_accessible :checkin, :duration
end
