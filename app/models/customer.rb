class Customer < ActiveRecord::Base
  attr_accessible :address, :billing_address, :contact, :email, :name, :phone, :website
has_many :communities

end
