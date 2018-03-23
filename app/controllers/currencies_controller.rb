class CurrenciesController < ApplicationController
  def index
    @currencies = Currency.order(:rank)
  end

  def details; end
end
