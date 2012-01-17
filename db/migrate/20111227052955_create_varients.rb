class CreateVarients < ActiveRecord::Migration
  def self.up
    create_table :varients do |t|
      t.integer :product_id
      t.integer :var_name
      t.integer :var_length

      t.timestamps
    end
  end

  def self.down
    drop_table :varients
  end
end
