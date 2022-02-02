class DailyNewsletterMailerJob < ApplicationJob
  queue_as :default

  def perform(*args)
    ser.find_each do |user|
      DailyNewsletterMailer.with(user: user, fact: DailyNewsletterServices::DailyNewsletter.new.daily_fact).daily_newsletter.deliver_now
    end
  end
end
