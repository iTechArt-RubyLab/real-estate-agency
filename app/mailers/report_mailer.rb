class ReportMailer < ApplicationMailer
  def admin_report(report)
    @user = params[:user]
    @report = report
    mail(to: @user.email, subject: "Your report! #{@report}")
  end
end
