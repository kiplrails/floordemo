class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.integer :supplier_id
      t.integer :category_id
      t.string :product_code
      t.string :manufacturer_name
      t.string :product_name
      t.string :full_description
      t.string :status
      t.string :image
      t.string :set_options

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
