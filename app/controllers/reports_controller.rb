class ReportsController < ApplicationController
  def users_count
    User.count
  end

  def clients_count
    clients = 0
    User.all.map { |user| clients += 1 if user.profilable_type == 'ClientProfile' }
    clients
  end

  def realtors_count
    realtors = 0
    User.all.map { |user| realtors += 1 if user.profilable_type == 'ClientProfile' }
    realtors
  end

  def lots_count
    Lot.count
  end

  def commercial_premises_count
    commercial_premises = 0
    Lot.all.map { |lot| commercial_premises += 1 if lot.lotable_type == 'CommercialPremise' }
    commercial_premises
  end

  def country_side_houses_count
    country_side_houses = 0
    Lot.all.map { |lot| country_side_houses += 1 if lot.lotable_type == 'CountrySideHouse' }
    country_side_houses
  end

  def flats_count
    flats = 0
    Lot.all.map { |lot| flats += 1 if lot.lotable_type == 'Flat' }
    flats
  end
end
