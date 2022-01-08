require 'rails_helper'

RSpec.describe YelpFacade do
  it 'can create an array of business object' do
    businesses = YelpFacade.businesses('80209', 'thai')
    expect(businesses).to be_an Array
    expect(businesses.first).to be_an_instance_of(Business)
  end
end
