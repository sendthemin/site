class Community < ActiveRecord::Base
  belongs_to :customer
  attr_accessible :address, :name, :phone, :website
end
