class Trait < ActiveRecord::Base

  has_many :cheeses_traits
  has_many :traits_wines

  validates :name, presence: true
end
