customers = [{
"name" => "James",
"fav_color" => "blue",
"age" => 21,
"hair" => "blonde",},

{ "name" => "Bob",
  "fav_color" => "red",
  "age" => 27,
  "hair" => "brunette",
  }]

customers.each do |customer|
puts customer["name"]
puts customer["fav_color"]
puts customer["age"]
puts customer["hair"]
end
