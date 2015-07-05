class AddfirstNameToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.text :bio
      t.boolean :show
      t.string :website
      t.string :category
      t.string :job
    end
  end
end
