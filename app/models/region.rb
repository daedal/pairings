class Region < ActiveRecord::Base
  
  has_many :appellations
  has_many :wineries

  validates :name, presence: true
end
