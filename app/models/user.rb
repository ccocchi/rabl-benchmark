class User < ActiveRecord::Base
  has_many :comments
  has_many :posts
  has_one :address
end
