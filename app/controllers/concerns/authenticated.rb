module Authenticated
    extend ActiveSupport::Concern

    included do
      before_action :redirection
    end

    private

    def redirection
        redirect_to new_user_session_path unless user_signed_in?
    end
end