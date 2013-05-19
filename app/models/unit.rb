class Unit < ActiveRecord::Base
  belongs_to :community
  attr_accessible :address, :name
end
