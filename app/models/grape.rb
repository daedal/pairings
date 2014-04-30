class Grape < ActiveRecord::Base

  has_many :wines

  validates :varietal, presence: true

  def varietal_as_a_title
    "#{varietal.split.map(&:capitalize).join(' ')}"
  end
end
