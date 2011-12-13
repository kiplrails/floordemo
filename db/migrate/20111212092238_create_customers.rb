class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :company_name
      t.string :vat_number
      t.float :vat_rate
      t.string :gl_code
      t.string :acc_noi
      t.string :acc_noe

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
