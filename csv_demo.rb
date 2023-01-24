# TODO - Mostrar o nome dos beatles no terminal
require 'csv'

file_path = "data/beatles.csv"

# Leitura
CSV.foreach(file_path, headers: :first_row) do |row|
    full_name = row["First Name"] + " " + row["Last Name"]
    puts "#{full_name} played #{row["Instrument"]}"
end

# Escrita
CSV.open(file_path, "wb") do |csv|
  csv << ["First Name", "Last Name", "Instrument"]
  csv << ["George", "Abidol", "Ukele"]
end