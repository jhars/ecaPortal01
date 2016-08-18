class UsersController < ApplicationController
  include UsersHelper
  
  def new
    @districts = District.order('district_name ASC')
    @schools = School.order('school_name ASC')
    # HERE
  end

  def create
    attributes = user_params
  	@user = User.new(:email => attributes[:email], :password => attributes[:password])
    
    @user[:grade] = grade_level(attributes[:grade])
    puts attributes[:district]
    @user.district = District.where(district_name: attributes[:district]).last
    
    @user.school = School.where(school_name: attributes[:school]).last
    
    if @user.save
  		session[:user_id] = @user.id
  		redirect_to '/'
  	else
  		redirect_to '/signup'
  	end
  end

  private

  def user_params
  	# params.require(:user).permit(:email, :phone, :school_district, :school, :password, :grade, :password_confirmation)
  	params.require(:user).permit(:email, :phone, :grade, :district, :school, :password, :password_confirmation)
  end
end
