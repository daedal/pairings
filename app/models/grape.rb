class Grape < ActiveRecord::Base

  has_many :wines

  validates :varietal, presence: true
end
