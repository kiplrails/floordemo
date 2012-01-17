class CreateSupcontacts < ActiveRecord::Migration
  def self.up
    create_table :supcontacts do |t|
      t.integer :supplier_id
      t.string :contact_name
      t.string :contact_position
      t.integer :contact_number
      t.integer :contact_mobile
      t.integer :contact_fax
      t.string :contact_mail

      t.timestamps
    end
  end

  def self.down
    drop_table :supcontacts
  end
end
