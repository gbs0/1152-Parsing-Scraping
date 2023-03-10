require 'open-uri'
require 'nokogiri'

# TODO - Vamos buscar na internet receitas do site https://www.bbcgoodfood.com
puts "Welcome to Cookbook!"
puts "Insert your favorite ingredient to search a Recipe:"
print "> "
ingredient = gets.chomp
url = "https://www.bbcgoodfood.com/search?q=#{ingredient}"
html_file = URI.open(url).read
document = Nokogiri::HTML.parse(html_file)

# Buscamos pela classe, qual o elemento HTML que contém cada receita
recipes = document.search(".standard-card-new--skinny")

# Iteramos sobre cada elemento encontrado, mostrando seu nome e link de acesso
recipes.each_with_index do |recipe, index|
  recipe_name = recipe.search(".standard-card-new__article-title").text.strip
  recipe_link = recipe.search(".standard-card-new__article-title").attribute('href')
  puts "#{index + 1} | #{recipe_name} - See more: https://www.bbcgoodfood.com#{recipe_link}"
end

