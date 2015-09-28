class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, processors: [:thumbnail, :paperclip_optimizer],:default_url => "missingAvatar.jpg"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	

  ROLES = %w[admin moderator author normal]


end
