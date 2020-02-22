# frozen_string_literal: true

require 'open-uri'
require 'json'

def swapi_fetch(url)
  JSON.parse(open(url).read)
end

def api_url(string)
  "https://swapi.co/api/#{string}"
end

def films_url(id)
  "https://swapi.co/api/films/#{id}"
end

def table_list(table)
  table_names = table.map { |c| c['url'].delete('^0-9') }
  '- ' + table_names.join("\n            - ")
end

# CharacterFilm.destroy_all
# Film.destroy_all
# Character.destroy_all
# Planet.destroy_all
# Race.destroy_all

# films_ids = 1..7

# films_ids.each do |film_id|
#   film = swapi_fetch(films_url(film_id))
#   film_id = film['url'].delete('^0-9').to_i # exclude string from url
#   name = film['title']
#   episode_id = film['episode_id']
#   director = film['director']
#   producer = film['producer']
#   release_date = film['release_date']
#   opening_crawl = film['opening_crawl']
#   # characters = film['characters'].map { |characters_url| swapi_fetch(characters_url) }

#   Film.create(id: film_id,
#               name: name,
#               episodeID: episode_id,
#               director: director,
#               producer: producer,
#               release_date: release_date,
#               opening_crawl: opening_crawl)
# end

# to exclude number 17 then start the for loop
# (1..88).reject { |character_ids| character_ids == 17 }.each do |character_id|
#   character = swapi_fetch(api_url('people/' + character_id.to_s))
#   character_id = character['url'].delete('^0-9').to_i # exclude string from url
#   planet = character['homeworld'].delete('^0-9').to_i
#   race = character['species']
#   race1 = race[0] == nil ? 1 : race[0].delete('^0-9').to_i
#   name = character['name']
#   height = character['height']
#   mass = character['mass']
#   gender = character['gender']
#   birth_year = character['birth_year']

#   Character.create(id: character_id,
#                     name: name,
#                     height: height,
#                     mass: mass,
#                     gender: gender,
#                     birth_year: birth_year,
#                     planet_id: planet,
#                     race_id: race1)
# end

# planet_ids = 1..61
# planet_ids.each do |planet_id|
#   puts planet_id
#   planet = swapi_fetch(api_url('planets/' + planet_id.to_s))
#   planet_id = planet['url'].delete('^0-9').to_i # exclude string from url
#   name = planet['name']
#   diameter = planet['diameter']
#   climate = planet['climate']
#   population = planet['population']

#   Planet.create(id: planet_id,
#                 name: name,
#                 diameter: diameter,
#                 climate: climate,
#                 population: population)
# end

# race_ids = 1..37
# race_ids.each do |race_id|
#   race = swapi_fetch(api_url('species/' + race_id.to_s))
#   race_id = race['url'].delete('^0-9').to_i # exclude string from url
#   name = race['name']
#   classification = race['classification']
#   avg_height = race['average_height']
#   avg_lifespan = race['average_lifespan']
#   language = race['language']

#   Race.create(id: race_id,
#               name: name,
#               classification: classification,
#               average_height: avg_height,
#               average_lifespan: avg_lifespan,
#               language: language)
# end

# def createFC(int, array)
#   film_id = int
#   character = array
#   character.each do |character_id|
#     CharactersFilm.create(character_id: character_id, film_id: film_id)
#   end
# end

# c = [1,3,5,13,14,27,84,85,86,87,88]
# createFC(7,c)


# def createFP(int, array)
#   film_id = int
#   planet = array
#   planet.each do |planet_id|
#     FilmsPlanet.create(planet_id: planet_id, film_id: film_id)
#   end
# end

# p = [61]
# createFP(7,p)


# def createFR(int, array)
#   film_id = int
#   race = array
#   race.each do |race_id|
#     FilmsRace.create(race_id: race_id, film_id: film_id)
#   end
# end

# r = [1,2,3]
# createFR(7,r)


# puts "Created #{Film.count} Films."
# puts "Created #{Character.count} Characters."
# puts "Created #{Planet.count} Planets."
# puts "Created #{Race.count} Races."
# puts "Created #{FilmsRace.count} FilmsRace."
# puts "Created #{FilmsPlanet.count} FilmsPlanet."
# puts "Created #{CharactersFilm.count} CharactersFilm."