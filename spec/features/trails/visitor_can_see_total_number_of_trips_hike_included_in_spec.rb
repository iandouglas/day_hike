require 'rails_helper'

describe 'As a visitor' do
  describe 'When I visit the trail show' do
    scenario 'I see the total number of trips the hike has been included in' do

      trail_1 = Trail.create!(name: 'Trail 1', address: 'Address 1', length: 30)
      trail_2 = Trail.create!(name: 'Trail 2', address: 'Address 2', length: 10)
      trail_3 = Trail.create!(name: 'Trail 3', address: 'Address 3', length: 50)

      trip_1 = trail_1.trips.create!(name: 'Griffith Park', start_date: 'something_1', end_date: 'something_2')
      trip_2 = trail_1.trips.create!(name: 'Koreatown', start_date: 'something_3', end_date: 'somthing_4')
      trip_3 = trail_2.trips.create!(name: 'Yosemite', start_date: 'something_5', end_date: 'somthing_6')
      trip_4 = trail_1.trips.create!(name: 'Sequoia', start_date: 'something_7', end_date: 'somthing_8')
      trip_5 = trail_3.trips.create!(name: 'Big Sur', start_date: 'something_9', end_date: 'somthing_10')

      visit trail_path(trail_1)

      expect(page).to have_content('Total number of trips this hike has been included in: 3')
    end
  end
end
