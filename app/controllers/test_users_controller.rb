class TestUsersController < ApplicationController
  # def index
  # end

  # def show
  # end

  # def new
  # end

  # def delete
  # end

  # def edit
  # end

  def new
  end

  def create
    test_user = TestUser.new(user_params)
    if test_user.save
      session[:user_id] = test_user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  private

  def user_params
    params.require(:test_user).permit(:name, :email, :password, :password_confirmation)
  end

end
