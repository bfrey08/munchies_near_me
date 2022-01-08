class MapquestFacade
  def self.distance(from_location, to_loaction)
    results = MapquestService.directions(from_location, to_loaction)
    results[:route][:distance]
  end
  
end
