class AdminReportJob < ApplicationJob
  queue_as :default

  def perform(user, report, report_message)
    ReportMailer.with(user: user).admin_report(user, report, report_message).deliver_now
  end
end
