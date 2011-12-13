class AddDetailsToCustomer < ActiveRecord::Migration
  def self.up
    add_column :customers, :contact_name, :string
    add_column :customers, :contact_position, :string
    add_column :customers, :contact_number, :integer
    add_column :customers, :contact_mobile_number, :integer
    add_column :customers, :contact_email, :string
    add_column :customers, :credit_limit, :string
    add_column :customers, :settelment_due, :string
    add_column :customers, :settelment_discount, :string
    add_column :customers, :trading_terms, :string
    add_column :customers, :credit_position, :string
    add_column :customers, :account_on_hold, :string
    add_column :customers, :comm_date, :date
    add_column :customers, :contact_type, :string
    add_column :customers, :comm_subject, :string
    add_column :customers, :comm_notes, :string
  end

  def self.down
     remove_column :customers, :contact_name
     remove_column :customers, :contact_position
     remove_column :customers, :contact_number
     remove_column :customers, :contact_mobile_number
     remove_column :customers, :contact_email
     remove_column :customers, :credit_limit
     remove_column :customers, :settelment_due
     remove_column :customers, :settelment_discount
     remove_column :customers, :trading_terms
     remove_column :customers, :credit_position
     remove_column :customers, :account_on_hold
     remove_column :customers, :comm_date
     remove_column :customers, :contact_type
     remove_column :customers, :comm_subject
     remove_column :customers, :comm_notes
  end
end
