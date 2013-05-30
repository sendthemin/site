class Guest < ActiveRecord::Base
 
  attr_accessible :name, :ident_id

  belongs_to :community
  belongs_to :ident
  has_many :visits
end
