FactoryGirl.define do
  # sequence :email do |n|
  #   "testemail#{n}@almontventures.com"
  # end

  # sequence :username do |n|
  #   "testuser#{n}"
  # end

  # factory :user do
  #   email
  #   username
  #   password              'Password8'
  #   password_confirmation 'Password8'
  #   first_name            'Yaron'
  #   last_name             'Sadka'
  # end

  factory :grape do
    varietal 'pinot noir'
  end

  factory :wine do
    vintage                1992
    winery_id              1
    grape_id               1
    alcohol_percentage     0.032
    serving_temperature    58
    sweetness              5
    acidity                5
    tanin                  3
    fruit                  9
    body                   5
    category_type          'red'
  end

  factory :winery do
    name                   'v. sattui'
    appellation_id         4
    region_id              2
  end
end
