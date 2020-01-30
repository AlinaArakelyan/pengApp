class User < ApplicationRecord
    has_many :posts
    has_many :comments, through: :posts
    has_many :likes, through: :posts
    has_secure_password
    validates :username, presence: true, uniqueness: true, :case_sensative => false

    # has_secure_password


end
