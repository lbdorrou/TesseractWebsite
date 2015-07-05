class RemoveAdminFromStaffs < ActiveRecord::Migration
  def change
    remove_column :staffs, :admin, :boolean
  end
end
