class Wine < ActiveRecord::Base

  has_and_belongs_to_many :cheeses
  has_and_belongs_to_many :traits

  belongs_to :winery
  belongs_to :grape

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates :category_type, presence: true
  validates :grape_id,      presence: true
  validates :vintage,       presence: true
  validates :winery_id,     presence: true

  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  def serving_temperature_as_degree
    "#{serving_temperature}˚"
  end

  def alcohol_percentage_as_percent
     "#{'%.2f' % (alcohol_percentage * 100.0)}%"
  end

end
