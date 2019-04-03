# frozen_string_literal: true

require 'json'

class ApplicationSeeder
  def seed!
    seed_quotes
  end

  private

  def seed_quotes
    file_path = File.join(Rails.root, 'db', 'quotes.json')
    data = JSON.parse(File.read(file_path))
    quotes = data['quotes']

    Quote.create!(quotes) if Quote.count < 50
  end
end
