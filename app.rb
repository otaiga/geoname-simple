require_relative 'lib/geo_name'

begin
  while !nil do
    puts "please enter lat and lon requirements (e.g. 52,13)"

    Signal.trap("INT") do
      puts "\nthanks for using this simple app"
      exit
    end
    
    values = gets.split(",")
    puts GeoName.new.get_lat_lon(values[0], values[1])
  end
end