collection :@users, :root => :users

attributes :id, :firstname, :lastname
attribute :age => :springs

node(:picture_url, :if => lambda { |u| u.picture?} ) { |u| u.picture }
