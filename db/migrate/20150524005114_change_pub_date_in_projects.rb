class ChangePubDateInProjects < ActiveRecord::Migration
  def change
    change_column :projects, :pubDate, :date
  end
end
