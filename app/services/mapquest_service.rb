class MapquestService
  def self.distance(from_location, to_location)
    content = conn.get("?from=#{from_location}&to=#{to_location}", key: "#{ENV['mapquest_key']}")
    results = parse_response(content)
    results[:route][:distance]
  end

  def self.parse_response(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new("http://www.mapquestapi.com/directions/v2/route")
  end
end
