class User < ActiveRecord::Base
  
  #this line of code gives our User model authentication methods via bcrypt
  has_secure_password

end
