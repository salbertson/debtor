class Debt < ActiveRecord::Base
  has_many :payments
end
