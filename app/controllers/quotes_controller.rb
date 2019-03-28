class QuotesController < ApplicationController
  def index
  end

  def show
    @quote = random_quote.content
    @quote_owner = random_quote.owner
  end

  private

  def random_quote
    offset = rand(Quote.count)
    quote = Quote.offset(offset).first
  end
end
