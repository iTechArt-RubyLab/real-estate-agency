class ReportsController < ApplicationController
  def users_count
    @users_count = Reports::UsersCountInteractor.new.call
  end

  def clients_count
    @clients_count = Reports::ClientsCountInteractor.new.call
  end

  def realtors_count
    @realtors_count = Reports::RealtorsCountInteractor.new.call
  end

  def locked_users_count
    @locked_users_count = Reports::LockedUsersCountInteractor.new.call
  end

  def lots_count
    @lots_count = Reports::LotsCountInteractor.new.call
  end

  def commercial_premises_count
    @commercial_premises_count = Reports::CommercialPremisesCountInteractor.new.call
  end

  def country_side_houses_count
    @country_side_houses_count = Reports::CountrySideHousesCountInteractor.new.call
  end

  def flats_count
    @flats_count = Reports::FlatsCountInteractor.new.call
  end

  def not_started_lots_count
    @not_started_lots_count = Reports::NotStartedLotsCountInteractor.new.call
  end

  def in_progress_lots_count
    @in_progress_lots_count = Reports::InProgressLotsCountInteractor.new.call
  end

  def published_lots_count
    @published_lots_count = Reports::PublishedLotsCountInteractor.new.call
  end

  def completed_lots_count
    @completed_lots_count = Reports::CompletedLotsCountInteractor.new.call
  end

  def blocked_lots_count
    @blocked_lots_count = Reports::BlockedLotsCountInteractor.new.call
  end
end
