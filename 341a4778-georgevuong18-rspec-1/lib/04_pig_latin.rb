def translate(word)
  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyz"
  first_letter = word.chars[0]
  second_letter = word.chars[1]
  third_letter = word.chars[2]

  if vowels.include?(first_letter)
    word + "ay"
  elsif consonants.include?(first_letter) && consonants.include?(second_letter) && consonants.include?(third_letter)

    word.chars[3..-1].join + first_letter + second_letter + third_letter + "ay"
  elsif consonants.include?(first_letter) && consonants.include?(second_letter)
    word.chars[2..-1].join + first_letter + second_letter + "ay"
  elsif consonants.include?(first_letter)
    word.chars[1..-1].join + first_letter + "ay"

  end
end
