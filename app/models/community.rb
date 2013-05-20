class Community < ActiveRecord::Base
  belongs_to :customer
  attr_accessible :address, :name, :phone, :website, :customer_id

has_many :idents
has_many :visits, :through => :idents
has_many :units, :through => :instances
has_many :units


end
