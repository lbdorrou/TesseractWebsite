class Blog < ActiveRecord::Base
  has_attached_file :mainImg, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "missinglong.jpg"
  validates_attachment_content_type :mainImg, :content_type => /\Aimage\/.*\Z/

  ISTYPE = %w[Blog News]

end
