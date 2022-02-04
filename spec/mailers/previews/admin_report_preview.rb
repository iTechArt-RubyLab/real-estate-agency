# Preview all emails at http://localhost:3000/rails/mailers/admin_report
class ReportMailerPreview < ActionMailer::Preview
  def admin_report
    ReportMailer.with(user: User.all.sample).admin_report('some report')
  end
end
