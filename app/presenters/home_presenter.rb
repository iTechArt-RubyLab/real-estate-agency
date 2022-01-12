class HomePresenter
  def initialize(user)
    @user = user
  end

  def email_without_domain_name
    user.email.split('@').first
  end

  private

  attr_accessor :user
end
