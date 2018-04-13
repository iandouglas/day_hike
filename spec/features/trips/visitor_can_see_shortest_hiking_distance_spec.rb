require 'rails_helper'

describe 'As a visitor' do
  describe 'When I visit a trip show' do
    scenario 'I see the shortest hiking distance' do

      trip_1 = Trip.create!(name: 'Griffith Park', start_date: 'something_1', end_date: 'something_2')
      trip_2 = Trip.create!(name: 'Koreatown', start_date: 'something_3', end_date: 'somthing_4')
      trail_1 = trip_1.trails.create!(name: 'Trail 1', address: 'Address 1', length: 3)
      trail_2 = trip_1.trails.create!(name: 'Trail 2', address: 'Address 2', length: 2)
      trail_3 = trip_1.trails.create!(name: 'Trail 3', address: 'Address 3', length: 1)
      trail_4 = trip_2.trails.create!(name: 'Trail 4', address: 'Address 4', length: 6)

      visit trips_path

      click_on "#{trip_1.name}"

      expect(page).to have_content('Shortest Hiking Distance: 1')
    end
  end
end
