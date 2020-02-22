class Race < ApplicationRecord
  has_many :characters
  has_and_belongs_to_many :films
end
