class UserController < ApplicationController
  before_action :set_user, only: %i[edit update lock_user unlock_user]

  def index
    @users = User.includes(:role)
    respond_to do |format|
      format.html
      format.json { render json: UserDatatable.new(params, view_context: view_context, users: @users) }
    end
  end

  def edit; end

  def update
    respond_to do |format|
      if @user.update!(flat_params)
        format.html { redirect_to user_index_url, notice: 'User was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def lock_user
    @user.lock_access!
  end

  def unlock_user
    @user.unlock_access!
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def flat_params
    params.require(:user).permit(:id, :role_id)
  end
end
