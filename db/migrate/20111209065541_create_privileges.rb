class CreatePrivileges < ActiveRecord::Migration
  def self.up
    create_table :privileges do |t|
      t.string :privilege_name

      t.timestamps
    end
    Privileges.reset_column_information
    Privileges.create(:privilege_name => 'Customer')
    Privileges.create(:privilege_name => 'Quotation')
    Privileges.create(:privilege_name => 'Sales Order')
    Privileges.create(:privilege_name => 'Invoice')
    Privileges.create(:privilege_name => 'Customer Cash Register')
    Privileges.create(:privilege_name => 'New Complaint')
    Privileges.create(:privilege_name => 'Suppliers')
    Privileges.create(:privilege_name => 'Purchase Order')
    Privileges.create(:privilege_name => 'Supplier Cash Register')
    Privileges.create(:privilege_name => 'Fitters')
    Privileges.create(:privilege_name => 'Category')
    Privileges.create(:privilege_name => 'Product')
  end

  def self.down
    drop_table :privileges
  end
end
