class Community < ActiveRecord::Base
  belongs_to :customer
  attr_accessible :address, :name, :phone, :website

has_many :idents
has_many :visits, :through => :idents
has_many :instances :through => :units
has_many :units


end
