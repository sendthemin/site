class Community < ActiveRecord::Base
  belongs_to :customer
  attr_accessible :address, :name, :phone, :website, :customer_id, :image

has_many :idents
has_many :visits, :through => :idents
has_many :units, :through => :instances
has_many :units

validates_attachment :image, presence: true,
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 5.megabytes }
  belongs_to :community
  has_attached_file :image, styles: { medium: "320x240>"}

end
