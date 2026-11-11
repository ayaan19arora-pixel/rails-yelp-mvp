restaurants = [
  { name: "Chez Marcel", address: "12 Rue de Rivoli, 75004 Paris", phone_number: "01 42 00 11 22", category: "french" },
  { name: "Trattoria Bella", address: "8 Via Roma, 20121 Milano", phone_number: "02 555 0101", category: "italian" },
  { name: "Sakura House", address: "3 Shibuya Crossing, Tokyo", phone_number: "03 1234 5678", category: "japanese" },
  { name: "Golden Dragon", address: "45 Mott Street, New York", phone_number: "212 555 0199", category: "chinese" },
  { name: "Brasserie Liège", address: "22 Rue Neuve, 1000 Brussels", phone_number: "02 512 3456", category: "belgian" }
]

restaurants.each do |attributes|
  Restaurant.find_or_create_by!(name: attributes[:name]) do |restaurant|
    restaurant.address = attributes[:address]
    restaurant.phone_number = attributes[:phone_number]
    restaurant.category = attributes[:category]
  end
end
