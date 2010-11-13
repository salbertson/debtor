require 'test_helper'

class PaymentTest < ActiveSupport::TestCase
  test ".average" do
    Payment.create(:amount => 20)
    Payment.create(:amount => 60)

    assert_equal(40, Payment.average)
  end

  test ".total_months" do
    Payment.create(:amount => 10, :paid_on => 40.days.ago)

    assert_equal(2, Payment.total_months)
  end

  test ".average_per_month" do
    Payment.create(:amount => 10, :paid_on => 1.month.ago)
    Payment.create(:amount => 30, :paid_on => Date.today)

    assert_equal(20, Payment.average_per_month)
  end
end
