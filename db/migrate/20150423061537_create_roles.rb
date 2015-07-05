class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :roles
  end
end

class UsersHaveAndBelongToManyRoles < ActiveRecord::Migration
  def self.up
    create_table :roles_staffs, :id => false do |t|
      t.references :role, :staff
    end
  end

  def self.down
    drop_table :roles_staffs
  end
end