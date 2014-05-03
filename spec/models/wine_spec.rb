require 'spec_helper'

describe Wine, 'associations' do
  it { expect(subject).to belong_to(:grape) }
  it { expect(subject).to belong_to(:winery) }

  it { expect(subject).to have_and_belong_to_many(:cheeses) }
  it { expect(subject).to have_and_belong_to_many(:traits) }

  it { expect(subject).to have_attached_file(:photo) }

  it { expect(subject).to validate_attachment_content_type(:photo).
                allowing('image/png', 'image/gif').
                rejecting('text/plain', 'text/xml') }
  pending { expect(subject).to validate_attachment_presence(:photo) }
  pending { expect(subject).to validate_attachment_size(:photo).
                less_than(2.megabytes) }
end

describe Wine, 'validations' do
  it { expect(subject).to validate_presence_of(:category_type) }
  it { expect(subject).to validate_presence_of(:grape_id) }
  it { expect(subject).to validate_presence_of(:vintage) }
  it { expect(subject).to validate_presence_of(:winery_id) }
end

describe Wine, '#alcohol_percentage_as_percent' do
  pending 'converts the alcohol percentage into a percent amount' do
    wine = build(:wine, alcohol_percentage: 0.04)

    expect(wine.alcohol_percentage_as_percent).to eq "4%"
  end
end

describe Wine, '#serving_temperature_as_degree' do
  it 'converts the serving temperature into a degree' do
    wine = build(:wine, serving_temperature: 53)

    expect(wine.serving_temperature_as_degree).to eq '53˚'
  end
end
