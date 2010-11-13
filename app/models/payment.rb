class Payment < ActiveRecord::Base
  belongs_to :debt

  def self.average
    sum(:amount) / count
  end

  def self.total_months
    ((Time.now - first.paid_on.to_time) / 1.month).ceil
  end

  def self.average_per_month
    sum(:amount) / total_months
  end
end
