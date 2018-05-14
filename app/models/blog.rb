class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged #check schema file and change the id to the unique set
end
