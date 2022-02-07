class ReportsController < ApplicationController
  def users_count
    @users_count = Reports::UsersCountInteractor.new.call
  end

  def users_count_report
    AdminReportJob.perform_later(current_user, users_count, 'users')
  end

  def clients_count
    @clients_count = Reports::ClientsCountInteractor.new.call
  end

  def clients_count_report
    AdminReportJob.perform_later(current_user, clients_count, 'clients')
  end

  def realtors_count
    @realtors_count = Reports::RealtorsCountInteractor.new.call
  end

  def realtors_count_report
    AdminReportJob.perform_later(current_user, realtors_count, 'realtors')
  end

  def locked_users_count
    @locked_users_count = Reports::LockedUsersCountInteractor.new.call
  end

  def locked_users_count_report
    AdminReportJob.perform_later(current_user, locked_users_count, 'locked users')
  end

  def lots_count
    @lots_count = Reports::LotsCountInteractor.new.call
  end

  def lots_count_report
    AdminReportJob.perform_later(current_user, lots_count, 'lots')
  end

  def commercial_premises_count
    @commercial_premises_count = Reports::CommercialPremisesCountInteractor.new.call
  end

  def commercial_premises_count_report
    AdminReportJob.perform_later(current_user, commercial_premises_count, 'commercial premises')
  end

  def country_side_houses_count
    @country_side_houses_count = Reports::CountrySideHousesCountInteractor.new.call
  end

  def country_side_houses_count_report
    AdminReportJob.perform_later(current_user, country_side_houses_count, 'country side houses')
  end

  def flats_count
    @flats_count = Reports::FlatsCountInteractor.new.call
  end

  def flats_count_report
    AdminReportJob.perform_later(current_user, flats_count, 'flats')
  end

  def not_started_lots_count
    @not_started_lots_count = Reports::NotStartedLotsCountInteractor.new.call
  end

  def not_started_lots_count_report
    AdminReportJob.perform_later(current_user, not_started_lots_count, 'not started lots')
  end

  def published_lots_count
    @published_lots_count = Reports::PublishedLotsCountInteractor.new.call
  end

  def published_lots_count_report
    AdminReportJob.perform_later(current_user, published_lots_count, 'published lots')
  end

  def completed_lots_count
    @completed_lots_count = Reports::CompletedLotsCountInteractor.new.call
  end

  def completed_lots_count_report
    AdminReportJob.perform_later(current_user, completed_lots_count, 'completed lots')
  end
end
