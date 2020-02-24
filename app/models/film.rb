class Film < ApplicationRecord
  has_and_belongs_to_many :characters
  has_and_belongs_to_many :planets
  has_and_belongs_to_many :races

  validates :name, :director, :producer, :release_date, :opening_crawl,  presence: true
  validates :episodeID, numericality: { only_integer: true }

  paginates_per 6
end
