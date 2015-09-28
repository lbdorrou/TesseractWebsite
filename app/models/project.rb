class Project < ActiveRecord::Base
  has_attached_file :mainImg, :styles => { :medium => "600x450#", :thumb => "400x300#" }, processors: [:thumbnail, :paperclip_optimizer], :default_url => "missingShort.jpg"
  validates_attachment_content_type :mainImg, :content_type => /\Aimage\/.*\Z/
	
  has_attached_file :img1, :styles => { :medium => "600x450#", :thumb => "400x300#" }, processors: [:thumbnail, :paperclip_optimizer], :default_url => "missingShort.jpg"
  validates_attachment_content_type :img1, :content_type => /\Aimage\/.*\Z/
	
  has_attached_file :img2, :styles =>  { :medium => "600x450#", :thumb => "400x300#" }, processors: [:thumbnail, :paperclip_optimizer], :default_url => "missingShort.jpg"
  validates_attachment_content_type :img1, :content_type => /\Aimage\/.*\Z/
	
  has_attached_file :img3, :styles =>  { :medium => "600x450#", :thumb => "400x300#" }, processors: [:thumbnail, :paperclip_optimizer], :default_url => "missingShort.jpg"
  validates_attachment_content_type :img1, :content_type => /\Aimage\/.*\Z/

  has_attached_file :img4, :styles => { :medium => "600x450#", :thumb => "400x300#" }, processors: [:thumbnail, :paperclip_optimizer], :default_url => "missingShort.jpg"
  validates_attachment_content_type :img1, :content_type => /\Aimage\/.*\Z/
	
  has_attached_file :img5, :styles => { :medium => "600x450#", :thumb => "400x300#" }, processors: [:thumbnail, :paperclip_optimizer], :default_url => "missingShort.jpg"
  validates_attachment_content_type :img1, :content_type => /\Aimage\/.*\Z/
	
end
