class Unit < ActiveRecord::Base
  belongs_to :community
  attr_accessible :address, :name
  belongs_to :ident
  belongs_to :instance
  has_many :guests
  belongs_to :user
end
