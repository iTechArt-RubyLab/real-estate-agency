class HomeController < ApplicationController
  before_action :set_locale
  def index; end

  def default_url_options
    { locale: I18n.locale }
  end

  def set_locale
    locale = params[:locale] || I18n.default_locale
    I18n.locale = locale.to_sym
  end
end
