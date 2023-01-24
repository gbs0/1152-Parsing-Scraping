require 'json'

file_path = 'data/beatles.json'

# Leitura
json_file = File.read(file_path)
# <#File:"data/beatles.json">
json_as_hash = JSON.parse(json_file)
p json_as_hash.class
puts json_as_hash

# Escrita
pink_floyd = {
    "title": "Pink Floyd",
    "year": 1978,
    artists: [
        {
            "first_name": "Roger",
            "last_name": "Waters",
            "Instrument": "Guitar"
        },
        {
            "first_name": "George",
            "last_name": "Abidol",
            "Instrument": "Drums"
        }
    ]
}

File.open(file_path, 'wb') do |file|
  json_as_file = JSON.generate(pink_floyd)
  file.write(json_as_file)
end