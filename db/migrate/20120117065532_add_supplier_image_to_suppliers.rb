class AddSupplierImageToSuppliers < ActiveRecord::Migration
  def self.up
    add_column :suppliers, :supplier_image, :string
  end

  def self.down
    remove_column :suppliers, :supplier_image
  end
end
