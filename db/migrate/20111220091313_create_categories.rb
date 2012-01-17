class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.integer :company_id
      t.string :category_name
      t.string :category_type

      t.timestamps
    end
  end

  def self.down
    drop_table :categories
  end
end
