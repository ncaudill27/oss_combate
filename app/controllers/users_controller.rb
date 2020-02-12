class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(
                          :first_name,
                          :last_name,
                          :password,
                          :password_confirmation,
                          :gi_skill,
                          :nogi_skill,
                          :weight
                        )
  end
end
