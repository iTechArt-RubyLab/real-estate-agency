class OrderingController < ApplicationController
  before_action :set_lot, only: %i[show]

  def show; end

  private

  def set_lot
    @lot = Lot.find(params[:id])
  end
end
