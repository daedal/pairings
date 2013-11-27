class Appellation < ActiveRecord::Base
  has_many :wines
  belongs_to :region
end
