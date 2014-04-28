desc 'Wine.com API'
task scrape_wine: :environment do
  require 'open-uri'
  require 'JSON'
  p  "I'll have a glass of the ...."

  699.times do |offset_index|
    offset = offset_index*100
    response = JSON.load(open("http://services.wine.com/api/beta2/service.svc/json/catalog?apikey=#{Figaro.env.wine_key}&offset=#{offset}&size=100"))

    wines = response["Products"]["List"]

    p 'got wines'

    wines.each do |wine|
      if wine['Type'] == 'Wine'
        appellation = wine['Appellation']
        p wine
        p r = Region.find_or_create_by(name: appellation['Region']['Name'])
        p a = r.appellations.find_or_create_by(name: appellation['Name'])

        p w = Winery.find_or_create_by(
          name: wine['Vineyard']['Name'],
          appellation_id: a.id,
          region_id: r.id
        )
        p g = Grape.find_or_create_by(varietal: wine['Varietal']['Name'])

        p wine
          vino = Wine.new
          vino.vintage = wine['Name'].split(' ').last.to_i
          vino.winery_id = w.id
          vino.grape_id = g.id
          vino.category_type = wine['Varietal']['WineType']['Name']
          p vino.save
      end
    end
    sleep 3
  end

end
