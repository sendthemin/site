class Ident < ActiveRecord::Base
  belongs_to :user
  belongs_to :community
  attr_accessible :name, :role, :user_id, :community_id

  has_many :instances
  has_many :visits
  has_many :guests, :through => :visits
  has_many :units, :through => :instances

  ROLES = %w[superadmin customer community_admin gatekeeper resident]

  def roles?(role)
      return !!self.roles.find_by_name(role.to_s.camelize)
  end

 

end
