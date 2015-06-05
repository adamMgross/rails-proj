class Product < ActiveRecord::Base
  
  has_many :pictures, :dependent => :delete_all

end
