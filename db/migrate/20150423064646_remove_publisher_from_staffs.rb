class RemovePublisherFromStaffs < ActiveRecord::Migration
  def change
    remove_column :staffs, :publisher, :boolean
  end
end
