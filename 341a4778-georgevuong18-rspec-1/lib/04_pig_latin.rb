def translate(word)
  arr = []
  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyz"

  word.split.each do |words|
    first_letter = words.chars[0]
    second_letter = words.chars[1]
    third_letter = words.chars[2]
    if vowels.include?(first_letter)
      arr << words + "ay"
    elsif consonants.include?(first_letter) && consonants.include?(second_letter) && consonants.include?(third_letter) || (consonants.include?(first_letter) && second_letter == "q" && third_letter == "u")
      arr << words.chars[3..-1].join + first_letter + second_letter + third_letter + "ay"
    elsif (first_letter == "q" && second_letter == "u") || consonants.include?(first_letter) && consonants.include?(second_letter)
      arr << words.chars[2..-1].join + first_letter + second_letter + "ay"
    elsif consonants.include?(first_letter)
      arr << words.chars[1..-1].join + first_letter + "ay"
    end
  end

  arr.join(" ")
end
