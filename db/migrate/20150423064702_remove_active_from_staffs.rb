class RemoveActiveFromStaffs < ActiveRecord::Migration
  def change
    remove_column :staffs, :active, :boolean
  end
end
