class Winery < ActiveRecord::Base

  has_many :wines

  belongs_to :appellation
  belongs_to :region

  validates :appellation_id, presence: true
  validates :name,           presence: true
  validates :region_id,      presence: true

  def name_as_a_title
    "#{name.split.map(&:capitalize).join(' ')}"
  end
end
