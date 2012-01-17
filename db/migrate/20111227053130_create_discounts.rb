class CreateDiscounts < ActiveRecord::Migration
  def self.up
    create_table :discounts do |t|
      t.integer :product_id
      t.integer :discount

      t.timestamps
    end
  end

  def self.down
    drop_table :discounts
  end
end
