require 'json'
require 'open-uri'

# TODO - let's read/write data from beers.json



# puts "Give me an artist"
# print '> '
# artist = gets.chomp.gsub(' ', '%20')

# puts "Give me a song title"
# print '> '
# title = gets.chomp.gsub(' ', '%20')

# url = "https://api.lyrics.ovh/v1/#{artist}/#{title}"

# string = open(url).read

# hash = JSON.parse(string)


# puts hash["lyrics"]


filepath = 'data/new_beers.json'

new_beers = { beers: [
  {
    name:       'Edelweiss',
    appearance: 'White',
    origin:     'Austria'
  },
  {
    name:       'Guinness',
    appearance: 'Stout',
    origin:     'Ireland'
  }
]}


File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(new_beers))
end






