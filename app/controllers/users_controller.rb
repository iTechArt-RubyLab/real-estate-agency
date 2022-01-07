class UsersController < ApplicationController
  def index
    @users = User.joins(:user_infos, :roles)
  end
end
