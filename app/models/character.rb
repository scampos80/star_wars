class Character < ApplicationRecord
  has_and_belongs_to_many :films
  belongs_to :planet
  belongs_to :race

  validates :name, :gender, presence: true
end
