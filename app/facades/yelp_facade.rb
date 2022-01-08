class YelpFacade
  def self.businesses(location, term)
    results = YelpService.search(location, term)
    businesses = results[:businesses][0..14]
    businesses.map do |business|
      Business.new(business)
    end

  end
end
