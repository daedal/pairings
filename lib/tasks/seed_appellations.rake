require_relative 'rake_data'

desc 'Seed Appellations'

task :seed_appellations => :seed_regions do
  p 'Seeding Appellations'

  appellations.each do |appellation|
    a = Appellation.find_or_create_by(name: array[1], region_id: rand(1..40))
    a.id ? next : (p 'Failed')
  end
end
