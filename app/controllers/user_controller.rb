class UserController < ApplicationController
  def index
    @users = User.includes(:city, :role)
    respond_to do |format|
      format.html
      format.json { render json: UserDatatable.new(params, view_context: view_context, users: @users) }
    end
  end
end
