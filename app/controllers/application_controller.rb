class ApplicationController < ActionController::Base
  protect_from_forgery
  
     def confirmed_logged_in
    unless session[:user_id] or session[:admin_id]
      flash[:notice] = "Please log in."
      redirect_to(:controller => 'public', :action => 'home')
      return false 
    else
      return true
    end
  end
   
  
  def attempt_login
    authorized_user = Admin.authenticate(params[:username], params[:password])
    if authorized_user
      session[:admin_id] = authorized_user.id
      session[:username] = authorized_user.username
      flash[:notice] = "You are now logged in."
      redirect_to(:action => 'index')
    else
       authorized_user = User.authenticate(params[:username], params[:password])
    if authorized_user
      session[:user_id] = authorized_user.id
      session[:username] = authorized_user.username
      flash[:notice] = "You are now logged in."
      redirect_to(:action => 'index')
    else 
      flash[:notice] = "Invalid username/password combination."
     redirect_to(:action => 'index')
    end
  end
    
  end
  
  def logout
    session[:user_id] = nil
    session[:admin_id] = nil 
    session[:username] = nil
    flash[:notice] = "You have been logged out."
   # redirect_to(:action => "login")
  redirect_to(:controller => 'public',:action => 'index') 
   
  #render('index')
  end

  
end
