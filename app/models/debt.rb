class Debt < ActiveRecord::Base
  has_many :payments, :dependent => :destroy

  def balance
    payment_total = 0
    payments.each do |payment|
      payment_total += payment.amount
    end
    amount - payment_total
  end
end
