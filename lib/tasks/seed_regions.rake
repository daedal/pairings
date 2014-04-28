require_relative 'rake_data'

desc 'Seed Regions'

task :seed_regions => :environment do
  p 'Seeding Regions'
  REGIONS.each do |array|
    region = Region.find_or_create_by(name: array[1])
    region.id ? next : (p 'Failed')
  end
end
