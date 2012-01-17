class CreateUoms < ActiveRecord::Migration
  def self.up
    create_table :uoms do |t|
      t.integer :product_id
      t.integer :by_unit
      t.integer :by_area
      t.integer :by_length
      t.integer :by_volume
      t.integer :by_weight

      t.timestamps
    end
  end

  def self.down
    drop_table :uoms
  end
end
