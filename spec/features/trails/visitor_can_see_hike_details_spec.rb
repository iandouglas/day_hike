require 'rails_helper'

describe 'As a visitor' do
  describe 'When I visit the trail show' do
    scenario 'I see the name, address and length of hike' do

      trip_1 = Trip.create!(name: 'Griffith Park', start_date: 'something_1', end_date: 'something_2')
      trip_2 = Trip.create!(name: 'Koreatown', start_date: 'something_3', end_date: 'somthing_4')
      trail_1 = trip_1.trails.create!(name: 'Trail 1', address: 'Address 1', length: 30)
      trail_2 = trip_1.trails.create!(name: 'Trail 2', address: 'Address 2', length: 20)
      trail_3 = trip_1.trails.create!(name: 'Trail 3', address: 'Address 3', length: 10)
      trail_4 = trip_2.trails.create!(name: 'Trail 4', address: 'Address 4', length: 60)

      visit trail_path(trail_1)

      expect(page).to have_content(trail_1.name)
      expect(page).to have_content(trail_1.address)
      expect(page).to have_content(trail_1.length)
      expect(page).to_not have_content(trail_2.name)
      expect(page).to_not have_content(trail_2.address)
      expect(page).to_not have_content(trail_2.length)
    end
  end
end
