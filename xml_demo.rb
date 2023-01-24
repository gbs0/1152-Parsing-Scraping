require "nokogiri"

file_path = "data/beatles.xml"
file = File.open(file_path)

# Leitura
document = Nokogiri::XML(file)

beatles = document.search("beatles beatle")

beatles.each do |beatle|
  first_name = beatle.search("first_name").text
  last_name = beatle.search("last_name").text
  instrument = beatle.search("instrument").text
  puts "#{first_name} #{last_name} played #{instrument}"
end

# Escrita
document = Nokogiri::XML::Builder.new(enconding: "UTF-8") do
    beatles do
        title "The Beatles"
        beatle do
            first_name "John"
            last_name "Lennon"
            instrument "Guitar"
        end
    end
end

File.open(file_path, "wb") { |file| file.write(document.to_xml)}