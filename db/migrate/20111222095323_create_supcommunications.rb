class CreateSupcommunications < ActiveRecord::Migration
  def self.up
    create_table :supcommunications do |t|
      t.integer :supplier_id
      t.integer :comm_date
      t.string :comm_type
      t.string :contact
      t.string :comm_subject
      t.string :outcome
      t.integer :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :supcommunications
  end
end
