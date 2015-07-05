class Changeblog < ActiveRecord::Migration
  def self.up
    add_attachment :blogs, :mainImg

  end

  def self.down
    remove_attachment :blogs, :mainImg

  end
end
