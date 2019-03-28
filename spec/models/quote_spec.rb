require 'rails_helper'

RSpec.describe Quote, type: :model do
  describe ".random_quote" do
    before do
      Quote.create(
        quote: "I fear not the man who has practiced 10,000 kicks once, but I fear the man who has practiced one kick 10,000 times.",
        author: "Bruce Lee",
        category: "inspriational"
      )
    end

    it { expect(described_class.random_quote.author).to eq("Bruce Lee") }
  end
end
