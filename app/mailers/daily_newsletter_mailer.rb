class DailyNewsletterMailer < ApplicationMailer
  def daily_newsletter
    @user = params[:user]
    @fact = params[:fact]
    mail(to: @user.email, subject: "Daily newsletter! ##{Fact.count}")
  end
end
