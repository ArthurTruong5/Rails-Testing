class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1} # 0 to going to be mapped to draft, by default its going to be in draft mode.
  extend FriendlyId
  friendly_id :title, use: :slugged #check schema file and change the id to the unique set

  validates_presence_of :title, :body
end
