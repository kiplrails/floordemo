class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :company_name
      t.string :company_address
      t.string :post_code
      t.integer :phone_number
      t.integer :fax_number
      t.string :web_url
      t.string :email
      t.string :vat_no
      t.float :vat_rate
      t.string :reg_no
      t.string :company_number
      t.string :currency

      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end
