class CharactersFilm < ApplicationRecord
  belongs_to :character
  belongs_to :film
end
