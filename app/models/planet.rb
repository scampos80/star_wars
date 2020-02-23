class Planet < ApplicationRecord
  has_many :characters
  has_and_belongs_to_many :films

  validates :name, :climate, presence: true
  validates :name, length: { minimum: 2 }
end
