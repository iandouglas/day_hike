require 'rails_helper'

RSpec.describe Trail, type: :model do
  describe 'relationships' do
    it { is_expected.to have_many(:trips) }
  end
end
