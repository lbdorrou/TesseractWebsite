class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :summary
      t.string :category
      t.text :client
      t.string :playLink
      t.string :videoLink

      t.timestamps null: false
    end
  end
end
