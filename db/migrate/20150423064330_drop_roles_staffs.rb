class DropRolesStaffs < ActiveRecord::Migration
  def change
    drop_table :roles_staffs
  end
end
