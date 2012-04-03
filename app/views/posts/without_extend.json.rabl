collection :@posts, :root => :posts
# collection @posts, :root => :posts

attributes :id, :title, :content
node(:votes) { |p| p.votes_count * 2 }

attribute :comments_count
