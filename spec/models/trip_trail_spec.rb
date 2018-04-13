require 'rails_helper'

RSpec.describe TripTrail, type: :model do
  describe 'relationships' do
    it { is_expected.to belong_to(:trip) }
    it { is_expected.to belong_to(:trail) }
  end
end
