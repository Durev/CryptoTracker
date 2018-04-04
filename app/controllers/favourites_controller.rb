class FavouritesController < ApplicationController
  def index; end

  def create
    @currency = Currency.find(currency_params[:id])
    current_user.currencies << @currency
    redirect_to favourites_index_path
  end

  private

    def currency_params
      params.require(:currency).permit(:id)
    end
end
