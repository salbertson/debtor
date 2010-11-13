class Debt < ActiveRecord::Base
  has_many :payments, :dependent => :destroy

  def self.balance
    all.inject(0) {|sum, debt| sum + debt.balance }.to_f
  end

  def balance
    amount - payments.sum(:amount)
  end
end
