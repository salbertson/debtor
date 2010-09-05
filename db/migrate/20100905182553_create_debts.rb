class CreateDebts < ActiveRecord::Migration
  def self.up
    create_table :debts do |t|
      t.string :name
      t.decimal :amount, :precision => 8, :scale => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :debts
  end
end
