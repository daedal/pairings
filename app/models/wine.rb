class Wine < ActiveRecord::Base

  has_many :cheeses_wines
  has_many :traits_wines

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
