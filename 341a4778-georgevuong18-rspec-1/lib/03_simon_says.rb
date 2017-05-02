def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str)
  str + " " + str
end

def start_of_word(str, num)
  str.chars.take(num).join
end

def first_word(str)
  str.split[0]
end

def titleize(str)
  # arr = ["the", "over", "and"]
  # if str.split.include?(arr)
  # always capitalize first letter of first word regardless
  # compare each word with arr, and ignore if include? is true 
  str.split.map(&:capitalize) .join(" ")
end
