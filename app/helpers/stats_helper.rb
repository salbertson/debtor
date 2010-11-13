module StatsHelper
  def total_debt_balance
    Debt.all.inject(0) {|sum, debt| sum + debt.balance }
  end

  def months_remaining
    total_debt_balance / Payment.average_per_month
  end
end
