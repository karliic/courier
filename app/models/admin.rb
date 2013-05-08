class Admin < ActiveRecord::Base
  attr_accessible :password, :username
  
  
   def self.authenticate(username="", password="")
    admin = Admin.find_by_username(username)
     password == Admin.find_by_password(password)
    if admin  && password
      return admin
      redirect_to(:controller => 'public', :action => 'index')
    else
      return false
    end
  end

  def password_match?(password="")
    password == Admin.find_by_password(password)
  end

  
  
  #private
  
 

  def clear_password
    # for security and b/c hashing is not needed
    self.password = nil
  end
end
