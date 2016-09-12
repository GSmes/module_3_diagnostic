class Station < OpenStruct
  # def initialize(zipcode)
  #   response = service.get_nearest_stations(zipcode)
  #   @stations = service.parse_nearest_stations(response)
  # end

  def self.service
    @@service ||= NrelService.new
  end

  def self.all(zipcode)
    # binding.pry
    stations = service.get_fuel_data(zipcode)
  end

  # def self.all(zip)
  #   station_obj = []
  #   stations = service.get_fuel_data(zipcode)
  #   stations["fuel_stations"].each do |station|
  #     station_obj << Station.new(station)
  #   end
  #   station_obj
  # end
end
