object :@user, :root => :user
# object @user => :user

attributes :id, :firstname

node(:location) do |u|
  { :address => partial('users/address', :object => u.address) }
end