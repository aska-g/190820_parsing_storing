require 'open-uri'
require 'nokogiri'

url = "https://www.goodreads.com/list/show/6.Best_Books_of_the_20th_Century"


string = open(url).read


nokogiri_object = Nokogiri::HTML(string)

nokogiri_object.search('.bookTitle span').each do |element|
  puts element.text
end

