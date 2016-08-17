class UsersController < ApplicationController
  def new
  end

  def create
    attributes = user_params
  	user = User.new(attributes)
    if user.save
      user[:grade] = grade_level(attributes[:grade])
      # user[:school_district] = school_district(attributes[:school_district])
      # user[:school] = school(attributes[:school])
  		session[:user_id] = user.id
  		redirect_to '/'
  	else
  		redirect_to '/signup'
  	end
  end
  
  def grade_level(grade_input)
    grade_translator = {
      'Kindergarten' => 0,
      '1st Grade' => 1,
      '2nd Grade' => 2,
      '3rd Grade' => 3,
      '4th Grade' => 4,
      '5th Grade' => 5,
      '6th Grade' => 6,
      '7th Grade' => 7,
      '8th Grade' => 8
    }
    grade_translator[:grade_input]
  end

  private

  def user_params
  	# params.require(:user).permit(:email, :phone, :school_district, :school, :password, :grade, :password_confirmation)
  	params.require(:user).permit(:email, :phone, :grade, :password, :password_confirmation)
  end
end
