require 'open-uri'
# nokogiri must be gem installed before
# gem install nokogiri (in the terminal)
require 'nokogiri'

ingredient = 'chocolate'
url = "https://www.bbcgoodfood.com/search/recipes?query=chocolate#query=chocolate&page=2&path=/search"

# The below is a string
html_file = open(url).read

# We are going to parse this string with nokogiri
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.teaser-item__title a').each do |element|
  puts element.text.strip
  link = element.attribute('href').value
  puts "https://www.bbcgoodfood.com#{link}"
end

