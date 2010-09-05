class Payment < ActiveRecord::Base
  belongs_to :debt
end
