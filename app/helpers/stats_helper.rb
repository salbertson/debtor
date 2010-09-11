module StatsHelper
  def total_payments
    total = 0
    Payment.find(:all).each do |payment|
      total += payment.amount
    end
    total
  end

  def average_payment
    total_payments / Payment.count
  end

  def average_monthly_payments
    (total_payments / days_since_first_payment) * 30
  end

  def first_payment
    Payment.find(:first, :order => "paid_on DESC")
  end

  def days_since_first_payment
    Date.today - first_payment.paid_on
  end

  def total_debt_balance
    total = 0
    Debt.find(:all).each do |debt|
      total += debt.balance
    end
    total
  end

  def days_remaining
    average_paid_per_day = total_payments / days_since_first_payment
    (total_debt_balance / average_paid_per_day).to_i
  end
end
