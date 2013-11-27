class Region < ActiveRecord::Base
  has_many :appellations
  has_many :wineries
end
