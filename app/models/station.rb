class Station < OpenStruct
  # def initialize(zipcode)
  #   response = service.get_nearest_stations(zipcode)
  #   @stations = service.parse_nearest_stations(response)
  # end

  def self.service
    binding.pry
    @@service ||= NrelService.new
  end

  def self.all(zipcode)
    stations = service.
  end
end
