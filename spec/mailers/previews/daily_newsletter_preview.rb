# Preview all emails at http://localhost:3000/rails/mailers/daily_newsletter
class DailyNewsletterPreview < ActionMailer::Preview
  def daily_newsletter
    DailyNewsletterMailer.with(user: User.all.sample, fact: DailyNewsletterServices::DailyNewsletter.new.daily_fact).daily_newsletter
  end
end
