object :@user, :root => :user

attributes :id, :firstname, :lastname
attribute :age => :springs

node(:picture_url, :if => lambda { |u| u.picture?} ) { |u| u.picture }
