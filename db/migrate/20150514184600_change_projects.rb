class ChangeProjects < ActiveRecord::Migration
  def self.up
    add_attachment :projects, :mainImg
    add_attachment :projects, :img1
    add_attachment :projects, :img2
    add_attachment :projects, :img3
    add_attachment :projects, :img4
    add_attachment :projects, :img5
  end

  def self.down
    remove_attachment :projects, :mainImg
    remove_attachment :projects, :img1
    remove_attachment :projects, :img2
    remove_attachment :projects, :img3
    remove_attachment :projects, :img4
    remove_attachment :projects, :img5
  end

end
