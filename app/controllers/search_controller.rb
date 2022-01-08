class SearchController < ApplicationController
    def index
      @businesses = YelpFacade.businesses(params[:location], params[:term])
      @businesses.map do |business|
        distance = MapquestFacade.directions(prarams[:from_address], params[:location])
        business.add_distance(distance)
      end
    end
end
