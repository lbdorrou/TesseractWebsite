class ChangeBlogs < ActiveRecord::Migration
  def change
    change_table :blogs do |t|
      t.string :type
      t.string :tagLine
    end
  end

  def self.up
    add_attachment :blogs, :mainImg

  end

  def self.down
    remove_attachment :blogs, :mainImg

  end
end
