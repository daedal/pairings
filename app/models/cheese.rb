class Cheese < ActiveRecord::Base
  
  has_and_belongs_to_many :traits
  has_and_belongs_to_many :wines

  validates :name, presence: true
end
