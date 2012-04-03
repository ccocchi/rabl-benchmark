object :@user, :root => :user
# object @user => :user

attributes :firstname, :lastname

child(:posts) do
  attribute :title
  child(:comments) do
    attributes :id, :content
  end
end