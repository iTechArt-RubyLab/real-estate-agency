class ReportsController < ApplicationController
  def users_count
    @users_count = User.count
  end

  def clients_count
    @clients_count = User.where(profilable_type: 'ClientProfile').count
  end

  def realtors_count
    @realtors_count = User.where(profilable_type: 'RealtorProfile').count
  end

  def lots_count
    @lots_count = Lot.count
  end

  def commercial_premises_count
    @commercial_premises_count = Lot.where(lotable_type: 'CommercialPremise').count
  end

  def country_side_houses_count
    @country_side_houses_count = Lot.where(lotable_type: 'CountrySideHouse').count
  end

  def flats_count
    @flats_count = Lot.where(lotable_type: 'Flat').count
  end

  def not_started_lots_count
    @not_started_lots_count = Lot.where(state: 'not_started').count
  end

  def in_progress_lots_count
    @in_progress_lots_count = Lot.where(state: 'in_progress').count
  end

  def published_lots_count
    @published_lots_count = Lot.where(state: 'published').count
  end

  def completed_lots_count
    @completed_lots_count = Lot.where(state: 'completed').count
  end

  def blocked_lots_count
    @blocked_lots_count = Lot.where(state: 'blocked').count
  end
end
