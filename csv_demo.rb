require 'csv'

filepath = 'data/beers.csv'

# THIS IS FOR STORING
csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << [ 'Name', 'Appearance', 'Origin' ]
  csv << [ 'Itaipólvora', 'Light (bad)', 'Brazil' ]
  csv << [ 'Antartica', 'Blond (also bad)', 'Brazil' ]
  csv << [ 'Stella Artois', 'Blond', 'Belgium' ]
end
















# THIS IS FOR PARSING #

# csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

# CSV.foreach(filepath, csv_options) do |row|
#   # Here, row is an array of columns
#   p row['Appearance']
# end

# [
#   ["Name","Appearance","Origin"],
#   ["Edelweiss","White","Austria"],
#   ["Cuvée des Trolls","Blond","Belgium"],
#   ["Choulette Ambrée","Amber","France"],
#   ["Gulden Draak","Dark","Belgium"]
# ]