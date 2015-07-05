class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :courseID
      t.text :summary
      t.string :college

      t.timestamps null: false
    end
  end
end
