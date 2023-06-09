# Genera string del alfabeto
alphabet = 'abcdefghijklmnopqrstuvwxyz '

# Obtiene el mensaje y la palabra clave
message = "ruby"
key = "code"

# Crea array del indice para las letras del alfabeto
  letter_to_index = []
  alphabet.each_char do |letter|
    letter_to_index << alphabet.index(letter)
  end

#  Crea array con las letras del alfabeto de acuerdo a su indice
  index_to_letter = []
  index_to_letter << alphabet.chars

# # Convierte el mensaje en su representación númerica
  index_message = []
  message.each_char do |message|
    index_message << alphabet.index(message)
  end

# # Convierte la palabra clave en su representación númerica
  index_key = []
  key.each_char do |key|
    index_key << alphabet.index(key)
  end

# # Dividir la matriz del mensaje en pedazos de acuerdo al tamaño de la palabra clave
if index_key.length < index_message.length
  key_repeated = (index_message.length / index_key.length.to_f).ceil
  index_key *= key_repeated
end

# Asegura que index_key no tenga una longitud mayor a index_message
index_key = index_key.take(index_message.length)

# Genera matriz con la suma númerica de la matriz mensaje y key.
index_cipher = []
index_message.each_with_index do |value, index|
   sum = (value + index_key[index]) % 26
  index_cipher << sum
end

# Devuelve la clave númerica en el mensaje cifrado.
cipher_message = []
index_cipher.each do |index|
  cipher_letter = 0
  alphabet.each_char do |letter|
    cipher_letter = alphabet[index]
  end
  cipher_message << cipher_letter
end
encrypted_message = cipher_message.join


puts message
puts "\n"
puts key
puts "\n"
puts encrypted_message

