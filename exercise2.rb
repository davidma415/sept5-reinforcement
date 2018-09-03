require 'httparty'

representatives_response = HTTParty.get('https://represent.opennorth.ca/representatives/house-of-commons/')
representatives_json = JSON.parse(representatives_response.body)
representatives_objects = representatives_json["objects"]


def print_rep_names(arr)
  arr.map do |rep|
    rep["name"]
  end
end

puts print_rep_names(representatives_objects)
