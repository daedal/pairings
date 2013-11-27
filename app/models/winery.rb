class Winery < ActiveRecord::Base
  
  has_many :wines
  
  belongs_to :appellation
  belongs_to :region
end
