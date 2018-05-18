class Portfolio < ApplicationRecord
  validates_presence_of :title, :main_image, :thumb_image, :body

# How to create a custom scope
def self.angular #self means referencing the current version of portfolios
  where(subtitle: "Angular")
end

scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails") }

end
