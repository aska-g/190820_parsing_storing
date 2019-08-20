require 'csv'

# TODO - let's read/write data from beers.csv
filepath    = 'data/beers.csv'

# Parsing
csv_options = { headers: :first_row }
CSV.foreach(filepath, csv_options) do |row|
  p row
end

#  Storing

new_filepath    = 'data/new_beers.csv'

new_beers = [
  ['Hansa', 'pilsner', 'Norway'],
  ['Żywiec', 'pilsner', 'Poland'],
  ['Guiness', 'stout', 'Ireland'],
  ['Frydenlund', 'bayer', 'Norway']
]

csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

CSV.open(new_filepath, 'wb', csv_options) do |csv_row|
  csv_row << ['Name', 'Appearance', 'Origin']
  new_beers.each do |beer|
    # beer = ['Hansa', 'pilsner', 'Norway']
    csv_row << beer
  end
end

short_texts = [
  'hello',
  'world',
  'tuesday'
]
short_texts_filepath = 'data/short_texts_filepath.csv'

CSV.open(short_texts_filepath, 'wb', csv_options) do |csv_row|
  # single strings need to be wrtapped in arrays
  csv_row << ['Title']
  short_texts.each do |text|

    csv_row << [text]
  end
end









