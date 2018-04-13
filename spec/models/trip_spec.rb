require 'rails_helper'

RSpec.describe Trip, type: :model do
  describe 'relationships' do
    it { is_expected.to have_many(:trails) }
  end
end
