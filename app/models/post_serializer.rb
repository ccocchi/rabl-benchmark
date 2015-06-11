class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :comments_count, :votes

  def votes
    object.votes_count * 2
  end
end