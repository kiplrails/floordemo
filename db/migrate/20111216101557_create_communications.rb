class CreateCommunications < ActiveRecord::Migration
  def self.up
    create_table :communications do |t|
      t.integer :customer_id
      t.date :comm_date
      t.string :comm_type
      t.string :comm_subject
      t.string :comm_notes

      t.timestamps
    end
  end

  def self.down
    drop_table :communications
  end
end
