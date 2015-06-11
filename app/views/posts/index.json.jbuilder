json.posts @posts do |post|
  json.partial! 'posts/base', post: post
  json.(post, :comments_count)
end


