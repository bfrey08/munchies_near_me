class Business
  attr_reader :name, :phone_number, :rating, :address, :distance
  def initialize(data)
    @name = data[:name]
    @phone_number = data[:display_phone]
    @rating = data[:rating]
    @address = data[:location][:display_address].join(", ")
    @distance = nil
  end
  def add_distance(distance)
    @distance = distance
  end
end
