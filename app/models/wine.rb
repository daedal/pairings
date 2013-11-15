class Wine < ActiveRecord::Base

  has_and_belongs_to_many :cheeses
  has_and_belongs_to_many :traits

  belongs_to :winery
  belongs_to :grape

  validates :vintage, presence: true

  def serving_temperature_as_degree
    "43˚"
  end

  def alcohol_content_as_percent
     "15.5%" 
  end

end
