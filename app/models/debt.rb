class Debt < ActiveRecord::Base
  has_many :payments, :dependent => :destroy

  def balance
    amount - payments.sum(:amount)
  end
end
