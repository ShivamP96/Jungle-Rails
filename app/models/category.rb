class Category < ActiveRecord::Base

  has_many :products
  #setting a validator for the name be present
  validates :name, presence:true

end
