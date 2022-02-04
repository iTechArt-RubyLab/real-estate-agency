class ReportMailer < ApplicationMailer
  def admin_report(user, report, report_message)
    @user = params[:user]
    @report = report
    @report_message = report_message
    mail(to: @user.email, subject: "Your report about #{@report_message} quantity")
  end
end
