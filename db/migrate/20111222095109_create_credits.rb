class CreateCredits < ActiveRecord::Migration
  def self.up
    create_table :credits do |t|
      t.integer :supplier_id
      t.integer :credit_limit
      t.integer :settlement_due
      t.integer :settlement_discount
      t.integer :payment_due
      t.string :trading_terms
      t.date :account_date

      t.timestamps
    end
  end

  def self.down
    drop_table :credits
  end
end
