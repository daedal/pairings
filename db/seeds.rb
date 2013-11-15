variety = ['red', 'white', 'rose', 'sparkling', 'fortified']
red_grape_type = ['cabernet savignon', 'pinot noir', 'merlot', 'sangiovese', 'zinfandel']
white_grape_type = [ 'white zinfandel', 'savignon blanc', 'chardonay', 'pinot gris', 'pinot grigio', 'semillon', 'moscato', 'riesling']
rose_grape_type = ['rosé']
sparkling_grape_type = ['pinot noir', 'chardonnay']
fortified_grape_type = ['port', 'sherry', 'marsala', 'madeira']


milk = ['cow', 'sheep', 'goat']
texture = ['soft', 'semi-hard', 'hard', 'blue']
country = ['France', 'Ireland', 'Spain', 'US']


red_grape_type.each do |type|
  Grape.create(name: type, variety: variety[0])
end

white_grape_type.each do |type|
  Grape.create(name: type, variety: variety[1])
end

rose_grape_type.each do |type|
  Grape.create(name: type, variety: variety[2])
end

sparkling_grape_type.each do |type|
  Grape.create(name: type, variety: variety[3])
end

fortified_grape_type.each do |type|
  Grape.create(name: type, variety: variety[4])
end



20.times do
  Winery.create(
    name:         'name',
    appellation:  'appellation',
    region:       'region'
    )
end

100.times do
  Wine.create(
    vintage:              rand(1990..Time.now.year),
    winery_id:            rand(1..20), #start at 1 to avoid nil error w/ association
    grape_id:             rand(1..20), #start at 1 to avoid nil error w/ association
    alcohol_percentage:   rand(5..20),
    serving_temperature:  rand(40..60),
    sweetness:            rand(9),
    acidity:              rand(9),
    tanin:                rand(9),
    fruit:                rand(9),
    body:                 rand(9)
    )
end

50.times do
  Cheese.create(
   name:              'Name',
   country_of_origin: country[rand(0..2)],
   region:            'Region',
   milk:              milk[rand(0..2)],
   texture_type:      texture[rand(0..3)],
   color:             'Color',
   age:               rand(0..24),
   )
end

@wines = Wine.all
Cheese.all.each_with_index do |cheese, index|
  cheese.wines << @wines[index]
  cheese.wines << @wines[index+50]
end

200.times do
  Trait.create(
    name:         'Trait Name',
    description:  'Description'
    )
end
