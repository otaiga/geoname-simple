require 'geonames'

class GeoName

  def get_lat_lon(lat, lon)
    places_nearby = Geonames::WebService.find_nearby_place_name lat, lon
    if places_nearby != []
      firstname =  places_nearby.first.respond_to?("name") ? places_nearby.first.name : nil
      country_name = places_nearby.first.respond_to?("country_name") ? places_nearby.first.country_name : nil
    end
      unless firstname == nil || country_name == nil
        response = {:firstname => firstname, :country_name => country_name}
      else
        response = "Sorry no values found for lat,lon"
      end
    response
  end

end