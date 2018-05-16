class Invoice < ApplicationRecord
  validates_presence_of :date, :company, :tax, :salesperson
end
