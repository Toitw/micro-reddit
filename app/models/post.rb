class Post < ApplicationRecord
    validates :title, :body, presence: true
    validates :title, length: {in: 3..20}
    validates :body, length: {maximum: 1000}

    belongs_to :user
    has_many :comments
end
