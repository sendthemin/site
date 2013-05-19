class Instance < ActiveRecord::Base
  belongs_to :unit
  belongs_to :ident
  # attr_accessible :title, :body
end
