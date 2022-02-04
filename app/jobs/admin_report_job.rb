class AdminReportJob < ApplicationJob
  queue_as :default

  def perform(user, report)
    ReportMailer.with(user: user).admin_report(report).deliver_now
  end
end
