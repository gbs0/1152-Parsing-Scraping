# TO-DO - Mostrar no terminal, o texto contido no arquivo .txt
# Leitura
file_path = "data/file.txt"
file = File.open(file_path)
text = file.read

# Escrita
message = text + "\nBye World!"
File.write(file_path, message)