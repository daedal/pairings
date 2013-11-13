class Cheese < ActiveRecord::Base
  
  has_many :cheeses_traits
  has_many :cheeses_wines

  validates :name, presence: true
end
