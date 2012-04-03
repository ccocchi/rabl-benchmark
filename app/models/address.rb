class Address < ActiveRecord::Base
  belongs_to :user
  
  def formatted
    "#{street}, #{zipcode} #{city}"
  end
end
