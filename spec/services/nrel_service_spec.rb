require 'rails_helper'

 RSpec.describe NrelService, type: :service do
   describe 'class methods' do
     describe '#nearest_station' do
       before(:each) do
         @address = '1331 17th St, Denver, CO 80202'
       end

       it 'returns nearest station' do
         data = NrelService.nearest_station(@address)
         station = data[:fuel_stations][0]

         expect(data[:fuel_stations]).to eq(1)
         expect(station[:street_address]).to eq('1225 17th Street, Suite 130')
       end
     end
   end
 end
