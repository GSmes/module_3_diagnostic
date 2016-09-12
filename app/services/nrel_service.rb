class NrelService
  def initialize
    @connection = Faraday.new("https://developer.nrel.gov")
  end

  def get_fuel_data(zipcode)
    response = @connection.get("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['NREL_API_KEY']}&location=#{zipcode}&radius=6&fuel_type=ELEC, LPG")
    binding.pry
    JSON.parse(response.body)
  end
end
