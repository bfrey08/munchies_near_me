require 'rails_helper'

RSpec.describe MapquestService do
    it 'can get directions' do
      response = MapquestService.distance('80209', '80210')
      expect(response).to eq(2.426)
    end


end
