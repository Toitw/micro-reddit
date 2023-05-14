class User < ApplicationRecord
    validates :name, :email, :nickname, presence: true
    validates :email, :nickname, uniqueness: true
    validates :name, :nickname, length: {in: 3..20}

    has_many :posts
    has_many :comments
end
