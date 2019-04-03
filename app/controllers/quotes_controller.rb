class QuotesController < ApplicationController
  def index; end

  def show
    @quote = Quote.fetch_quote
    @total = Quote.count
  end
end
