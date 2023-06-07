# Generar tabla de Vigenere
alphabet = 'abcdefghijklmnopqrstuvwxyz'

letter_to_index = Hash[alphabet.chars.zip(0...alphabet.length)] # crea un hash con las letras del alfabeto como :key y  el número de su posición como valor
index_to_letter = Hash[(0...alphabet.length).zip(alphabet.chars)] #crea un has con el número de la posición de la letra como :key y la letra del alfabeto como valor

# La función matemática del cifrado es la siguiente:
# Mi = (Mi + Ki) mod L
# Mi => es el caracter del texto a cifrar en la posición i
# Ki es el caracter de la palabra clave correspondiente a la letra del mensaje en la posición i
# mod L es tamaño del alfabeto que en este caso es 26 y se puede representar como % 26


message = "helloworld"
key = "secreto"

# Obtiene un array con las letras del
split_message = message.chars.inspect
split_key = key.chars.inspect



puts split_message
puts split_key





# Aquí debe mapear el mensaje con el número correspondiente del alfabeto en el hash letter_to_index
# split_message.each do |letter|
#   cipher_numer = letter_to_index(letter)
#   puts cipher_number
# end




# Aquí se encripta el mensaje

# def encrypt(message, key)
#   encrypted = ''
#   # Se divide el mensaje a la longitud de la llave


#   # Se convierte el mensaje al indice correspondiente y se  agrega la palabra clave
#   # Se divide por el modulo L


#   # Se escribe el mensaje a encriptar

# end


# def decrypt(cipher, key)
#   # Se divide el mensaje ya cifrado al tamaño de la clave


#   # Se convierte el mensaje cifrado a su valor en el alfabeto y se le quita la palabra clave por el mod L


#   # Se escribe el mensaje descifrado
# end





