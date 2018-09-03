require 'httparty'

toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
wards_json = JSON.parse(toronto_wards_response.body)
wards_json_objects = wards_json["objects"]


def print_ward_names(arr)
  arr.map do |ward|
    ward["name"]
  end
end

puts print_ward_names(wards_json_objects)
