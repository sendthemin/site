class Instance < ActiveRecord::Base
  belongs_to :unit
  belongs_to :user
  # attr_accessible :title, :body
end
