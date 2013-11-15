class Trait < ActiveRecord::Base

  has_and_belongs_to_many :cheeses
  has_and_belongs_to_many :wines

  validates :name, presence: true
end
