class ChangeCourses < ActiveRecord::Migration
  def self.up
    add_attachment :courses, :mainImg
    add_attachment :courses, :img1
    add_attachment :courses, :img2
    add_attachment :courses, :img3
    add_attachment :courses, :img4
    add_attachment :courses, :img5
  end

  def self.down
    remove_attachment :courses, :mainImg
    remove_attachment :courses, :img1
    remove_attachment :courses, :img2
    remove_attachment :courses, :img3
    remove_attachment :courses, :img4
    remove_attachment :courses, :img5
  end
end
