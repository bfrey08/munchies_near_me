require 'rails_helper'

RSpec.describe YelpService do
  it 'can get search results' do
    response = YelpService.search('80209', 'thai')
    expect(response).to be_an Array
    expect(response.count).to eq(15)
  end
end
