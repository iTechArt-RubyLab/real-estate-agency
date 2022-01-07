module Users
  class ProfilesController < ApplicationController
    def index
      @user = User.all
    end
  end
end
