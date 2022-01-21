class UserController < ApplicationController
  def index
    @users = User.all
    respond_to do |format|
      format.html
      format.json { render json: UserDatatable.new(params, view_context: view_context, tags: @tags) }
    end
  end
end
