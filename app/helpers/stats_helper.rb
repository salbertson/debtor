module StatsHelper
  def payment_total
    total = 0
    Payment.find(:all).each do |payment|
      total += payment.amount
    end
    total
  end

  def average_payment
    payment_total / Payment.count
  end

  def average_monthly_payment
    payment_total / months_of_payments
  end

  def first_payment
    Payment.find(:first, :order => "paid_on")
  end

  def total_debt_balance
    total = 0
    Debt.find(:all).each do |debt|
      total += debt.balance
    end
    total
  end

  def months_remaining
    total_debt_balance / average_monthly_payment
  end

  def months_of_payments
    months = Date.today.month - first_payment.paid_on.month
    if first_payment.paid_on.year != Date.today.year
      months += (Date.today.year - first_payment.paid_on.year) * 12
    end
    return months
  end
end
