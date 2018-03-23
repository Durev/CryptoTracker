class CurrenciesController < ApplicationController
  def index
    @currencies = Currency.order(:rank)
  end

  def show
    @currency = Currency.find(params[:id])
  end

  def details; end
end
