class Course < ActiveRecord::Base
  has_attached_file :mainImg, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "missing.png"
  validates_attachment_content_type :mainImg, :content_type => /\Aimage\/.*\Z/
  has_attached_file :img1, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "missing.png"
  validates_attachment_content_type :img1, :content_type => /\Aimage\/.*\Z/
  has_attached_file :img2, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "missing.png"
  validates_attachment_content_type :img1, :content_type => /\Aimage\/.*\Z/
  has_attached_file :img3, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "missing.png"
  validates_attachment_content_type :img1, :content_type => /\Aimage\/.*\Z/
  has_attached_file :img4, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "missing.png"
  validates_attachment_content_type :img1, :content_type => /\Aimage\/.*\Z/
  has_attached_file :img5, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "missing.png"
  validates_attachment_content_type :img1, :content_type => /\Aimage\/.*\Z/


  has_attached_file :pdf
  validates_attachment :pdf, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }

end
