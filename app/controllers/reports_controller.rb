class ReportsController < ApplicationController
  def users_count
    @users_count = Reports::UsersCountInteractor.new.call
    AdminReportJob.perform_later(current_user, @users_count, 'users')
  end

  def clients_count
    @clients_count = Reports::ClientsCountInteractor.new.call
    AdminReportJob.perform_later(current_user, @clients_count, 'clients')
  end

  def realtors_count
    @realtors_count = Reports::RealtorsCountInteractor.new.call
    AdminReportJob.perform_later(current_user, @realtors_count, 'realtors')
  end

  def locked_users_count
    @locked_users_count = Reports::LockedUsersCountInteractor.new.call
    AdminReportJob.perform_later(current_user, @locked_users_count, 'locked users')
  end

  def lots_count
    @lots_count = Reports::LotsCountInteractor.new.call
    AdminReportJob.perform_later(current_user, @lots_count, 'lots')
  end

  def commercial_premises_count
    @commercial_premises_count = Reports::CommercialPremisesCountInteractor.new.call
    AdminReportJob.perform_later(current_user, @commercial_premises_count, 'commercial premises')
  end

  def country_side_houses_count
    @country_side_houses_count = Reports::CountrySideHousesCountInteractor.new.call
    AdminReportJob.perform_later(current_user, @country_side_houses_count, 'country side houses')
  end

  def flats_count
    @flats_count = Reports::FlatsCountInteractor.new.call
    AdminReportJob.perform_later(current_user, @flats_count, 'flats')
  end

  def not_started_lots_count
    @not_started_lots_count = Reports::NotStartedLotsCountInteractor.new.call
    AdminReportJob.perform_later(current_user, @not_started_lots_count, 'not started lots')
  end

  def published_lots_count
    @published_lots_count = Reports::PublishedLotsCountInteractor.new.call
    AdminReportJob.perform_later(current_user, @published_lots_count, 'published lots')
  end

  def completed_lots_count
    @completed_lots_count = Reports::CompletedLotsCountInteractor.new.call
    AdminReportJob.perform_later(current_user, @completed_lots_count, 'completed lots')
  end
end
