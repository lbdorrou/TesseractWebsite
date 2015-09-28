class Blog < ActiveRecord::Base
  has_attached_file :mainImg, :styles => { :medium => "630x280#", :thumb => "450x200#" }, processors: [:thumbnail, :paperclip_optimizer],:default_url => "missingLong.jpg"
  validates_attachment_content_type :mainImg, :content_type => /\Aimage\/.*\Z/

  ISTYPE = %w[Blog News]

end
