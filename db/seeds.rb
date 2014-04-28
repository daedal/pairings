p 'Beginning seeding of database'

appellations = ['Napa', 'Appell 2', 'Sonoma', 'Burgandy']

type = ['red', 'white', 'rose', 'sparkling', 'fortified']
red_grape_type = ['cabernet savignon', 'pinot noir', 'merlot', 'sangiovese', 'zinfandel']
white_grape_type = [ 'white zinfandel', 'savignon blanc', 'chardonay', 'pinot gris', 'pinot grigio', 'semillon', 'moscato', 'riesling']
rose_grape_type = ['rosé']
sparkling_grape_type = ['pinot noir', 'chardonnay']
fortified_grape_type = ['port', 'sherry', 'marsala', 'madeira']

milk = ['cow', 'sheep', 'goat']
texture = ['soft', 'semi-hard', 'hard', 'blue']
country = ['France', 'Ireland', 'Spain', 'US']


Rake::Task['seed_regions'].invoke
# Rake::Task['seed_appellations'].invoke
p 'Creating Appellations'
appellations.each do |appellation|
  a = Appellation.find_or_initialize_by(name: appellation)
  a.region_id = rand(1..40)
  a.id ? next : (p 'Failed')
end

p 'Growing Grapes'
red_grape_type.length.times do |i|
  Grape.create(varietal: red_grape_type[i])
end

white_grape_type.length.times do |i|
  Grape.create(varietal: white_grape_type[i])
end

rose_grape_type.length.times do |i|
  Grape.create(varietal: rose_grape_type[i])
end

sparkling_grape_type.length.times do |i|
  Grape.create(varietal: sparkling_grape_type[i])
end

fortified_grape_type.length.times do |i|
  Grape.create(varietal: fortified_grape_type[i])
end

p 'Creating Appellations'
appellations.length.times do |i|
  Appellation.create(
    name: appellations[i],
    region_id: rand(1..4)
    )
end

p 'Building Wineries'
20.times do
  Winery.create(
    name:           'name',
    appellation_id:  rand(1..4),
    region_id:       rand(1..4)
    )
end

p 'Fermenting Grapes'
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
    body:                 rand(9),
    category_type:        type[rand(4)]
    )
end

p 'Woohoo Wine!'

p 'Fermenting Milk'
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

p 'Woohoo cheese!'

p 'Pairing Cheese and Wine'
@wines = Wine.all
Cheese.all.each_with_index do |cheese, index|
  cheese.wines << @wines[index]
  cheese.wines << @wines[index+50]
end

p 'mmmmm'

p 'Creating Traits'
200.times do
  Trait.create(
    name:         'Trait Name',
    description:  'Description'
    )
end

p 'Database successfully seeded! Remember: never drink and drive!!'
