class Appellation < ActiveRecord::Base

  has_many :wineries
  belongs_to :region

  validates :name, presence: true
  validates :region_id, presence: true
end
