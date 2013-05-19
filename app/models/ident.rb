class Ident < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name

  has_many :instances
  has_many :visits
  has_many :guests, :through => :visits
  has_many :units, :through => :instances
end
