class Portfolio < ApplicationRecord
  validates_presence_of :title, :main_image, :thumb_image, :body
end
