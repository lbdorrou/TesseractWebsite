class StaffsHaveAndBelongToManyRoles < ActiveRecord::Migration
  def self.up
    create_table :roles_staffs, :id => false do |t|
      t.references :role, :staff
  end

  def self.down
    drop_table :roles_staffs
  end
end
end