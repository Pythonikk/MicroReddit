class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :pseudo, presence: true, length: { in: 5..20 }

  validates :password, presence: true, length: { in: 6..20 }, format:
    { with: /\A(?=.*[a-zA-Z])(?=.*[0-9]).{6,}\z/,
      message: 'must have at least 6 characters and include one number and one letter' }
end
