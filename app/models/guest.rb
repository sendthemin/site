class Guest < ActiveRecord::Base
  attr_accessible :arrival_date, :departure_date, :guest_name, :stay_length

  belongs_to :user
  validates :user_id, presence: true

end
