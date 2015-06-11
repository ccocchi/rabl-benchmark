json.(post, :id, :title, :content)
json.votes post.votes_count * 2
