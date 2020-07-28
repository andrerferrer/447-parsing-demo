require 'json'
# require 'yaml'
# require 'date'

filepath = 'data/drinks.json'

# THIS IS HOW WE STORE IN A JSON
drinks = { 
  beers: [
    {
      name:       'Edelweiss',
      appearance: 'White',
      origin:     'Austria'
    },
    {
      name:       'Guinness',
      appearance: 'Stout',
      origin:     'Ireland'
    },
    # etc...
  ],
  cachacas: [
    {
      name: 'Caninha da Roça',
      appearance: 'Dirty (like Christina Aguillera)',
      origin: 'From the depths of hell'
    },
    {
      name: '51',
      appearance: 'Clean',
      origin: 'Brazil'
    }
  ]
}

File.open(filepath, 'wb') do |file|
  # this is like hash.to_s
  json_drinks = JSON.generate(drinks)
  file.write(json_drinks)
end

















# THIS IS HOW WE PARSE
# serialized_beers = File.read(filepath)

# # p serialized_beers
# # p serialized_beers.class

# # string.to_json
# beers = JSON.parse(serialized_beers)

# p beers
# p beers.class

# this is called digging
# p beers['beers'][1]['name']
