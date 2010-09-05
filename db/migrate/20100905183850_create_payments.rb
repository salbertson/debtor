class CreatePayments < ActiveRecord::Migration
  def self.up
    create_table :payments do |t|
      t.integer :debt_id
      t.decimal :amount, :precision => 8, :scale => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :payments
  end
end
