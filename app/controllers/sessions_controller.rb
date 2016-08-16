class SessionsController < ApplicationController
  def new
  end

  # def create
  #   test_user = TestUser.find_by_email(params[:email])
  #   # If the user exists AND the password entered is correct.
  #   if test_user && test_user.authenticate(params[:password])
  #     # Save the user id inside the browser cookie. This is how we keep the user 
  #     # logged in when they navigate around our website.
  #     session[:user_id] = test_user.id
  #     redirect_to '/'
  #   else
  #   # If user's login doesn't work, send them back to the login form.
  #     redirect_to '/login'
  #   end
  # end

  # def destroy
  #   session[:user_id] = nil
  #   redirect_to '/login'
  # end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/login'
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
