attributes :id, :firstname, :lastname

node(:picture_url, :if => lambda { |u| u.picture?} ) { |u| u.picture }
