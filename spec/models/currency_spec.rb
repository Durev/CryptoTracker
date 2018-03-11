require 'rails_helper'

RSpec.describe Currency, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.create(:currency)).to be_valid
  end

  describe "Validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:symbol) }
    it { is_expected.to validate_presence_of(:price_usd) }
  end
end
