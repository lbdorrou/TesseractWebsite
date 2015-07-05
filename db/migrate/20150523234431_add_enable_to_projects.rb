class AddEnableToProjects < ActiveRecord::Migration
  def change
    change_table :projects do |t|
      t.string :pubDate
      t.string :location
      t.text :collaborators
      t.boolean :inProgress
      t.boolean :show
      t.string :auxTitle
      t.text :aux

    end
  end
end
