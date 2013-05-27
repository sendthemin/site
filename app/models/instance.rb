class Instance < ActiveRecord::Base
  belongs_to :unit
  belongs_to :ident
  attr_accessible :unit_id, :ident_id
end
