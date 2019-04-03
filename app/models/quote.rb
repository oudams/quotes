class Quote < ApplicationRecord
  class << self
    def fetch_quote
      build_quotes if new_month

      random_quote
    end

    def random_quote
      offset(rand(count)).first
    end

    private

    def build_quotes
        conn = Faraday.new(:url => 'https://andruxnet-random-famous-quotes.p.rapidapi.com')

        resp = conn.get do |req|
          req.url '/?count=15&cat=famous'
          req.headers['Content-Type'] = 'application/json'
          req.headers['X-RapidAPI-Key'] = ENV["X_RapidAPI_Key"]
        end

        if resp.body
          quote_params = JSON.parse(resp.body)

          create(quote_params)
        end
    end

    def new_month
      # false
      last_date = order(:created_at).last&.created_at

      return true unless last_date

      (Date.today - last_date.to_date) > 30
    end
  end
end
