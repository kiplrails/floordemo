class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.integer :customer_id
      t.string :contact_name
      t.string :contact_position
      t.integer :contact_number
      t.integer :contact_mobile_number
      t.string :contact_email

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
