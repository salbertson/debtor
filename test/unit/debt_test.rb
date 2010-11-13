require 'test_helper'

class DebtTest < ActiveSupport::TestCase
  def setup
    @debt = Debt.create(:name => "Chevron", :amount => 100)

    @payment1 = Payment.create(:amount => 10, :debt => @debt)
    @payment2 = Payment.create(:amount => 10, :debt => @debt)
  end

  test "#balance" do
    assert @debt.balance == 80
  end

  test "payments should be destroyed" do
    @debt.destroy
    assert !Payment.exists?(@payment1)
    assert !Payment.exists?(@payment2)
  end
end
