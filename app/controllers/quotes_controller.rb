class QuotesController < ApplicationController
  def index; end

  def show
    @quote = Quote.fetch_quote
  end
end
