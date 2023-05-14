class Comment < ApplicationRecord
  validates :body, presence: true
  validates :body, length: {maximum: 1000}
  
  belongs_to :post
  belongs_to :user
end
