module DebtsHelper
  def debt_balance(debt)
    payment_total = 0
    debt.payments.each do |payment|
      payment_total += payment.amount
    end
    number_to_currency(debt.amount - payment_total)
  end
end
