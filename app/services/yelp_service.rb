class YelpService
  def self.search(location, term)
    content = conn.get("", {location: location, term: term}, Authorization: "#{ENV['yelp_key']}")

    results = parse_response(content)
    results[:businesses][0..14]
  end

  def self.parse_response(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new("https://api.yelp.com/v3/businesses/search")
  end

end
