class AddEnableToCourses < ActiveRecord::Migration
  def change
    change_table :courses do |t|
      t.string :timeOffered
      t.string :location
      t.string :website
      t.string :syllabus
      t.text :collaborators
      t.boolean :show
      t.string :auxTitle
      t.text :aux

    end
  end
end
