class AddEnableToBlogs < ActiveRecord::Migration
  def change
    change_table :blogs do |t|
      t.text :tags
      t.boolean :show
    end
  end
end
