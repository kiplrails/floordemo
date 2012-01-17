class CreateSuppliers < ActiveRecord::Migration
  def self.up
    create_table :suppliers do |t|
      t.integer :user_id
      t.string :account_reference
      t.string :company_name
      t.string :account_number
      t.string :vat_number
      t.string :address_line1
      t.string :address_line2
      t.string :address_line3
      t.string :town
      t.string :country
      t.string :postcode
      t.string :website
      t.string :image
      t.string :glcode

      t.timestamps
    end
  end

  def self.down
    drop_table :suppliers
  end
end
