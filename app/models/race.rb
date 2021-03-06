class Race < ApplicationRecord
  has_many :characters
  has_and_belongs_to_many :films

  validates :name, :language, presence: true
  validates :name, length: { minimum: 2 }

  paginates_per 6
end
