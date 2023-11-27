def caesar_cipher(string, shift)
    encrypted_string = ""
    string.each_char { |char|
        if char.match?(/[A-Za-z]/)
            base_char_ord = char == char.upcase() ? 'A'.ord : 'a'.ord
            encrypted_string += (base_char_ord + ((char.ord - base_char_ord + shift) % 26)).chr
        else
            encrypted_string += char
        end
    }
    return encrypted_string
end

p caesar_cipher("What a string!", 5)
p caesar_cipher("Zoo", 1)
p caesar_cipher("abcdef", 1)
p caesar_cipher("Zoo", 10)