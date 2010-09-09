class AddPaidOnToPayments < ActiveRecord::Migration
  def self.up
    add_column :payments, :paid_on, :date
  end

  def self.down
    remove_column :payments, :paid_on
  end
end
