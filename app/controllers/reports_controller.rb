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
end
