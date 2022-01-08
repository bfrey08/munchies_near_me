require 'rails_helper'

RSpec.describe YelpService do
  it 'can get search results' do
    response = YelpService.search('80209', 'thai')
    expect(response).to be_an Hash
    expect(response).to have_key(:businesses)
  end
end
