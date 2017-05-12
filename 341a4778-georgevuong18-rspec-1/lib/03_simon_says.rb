def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, num = 2)
  arr = []
  (1..num).each { arr << str }
  arr.join(" ")
end

def start_of_word(str, num)
  str.chars.take(num).join
end

def first_word(str)
  str.split[0]
end

def titleize(str)
  arr = ["the", "over", "and"]
  title = []
  str.split.each_with_index do |word, idx|
    if idx == 0
      title << word.capitalize
    elsif arr.include?(word)
      title << word.downcase
    else
      title << word.capitalize
    end
  end

  title.join(" ")
end
