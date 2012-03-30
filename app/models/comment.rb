class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :posts, :counter_cache => true
end
