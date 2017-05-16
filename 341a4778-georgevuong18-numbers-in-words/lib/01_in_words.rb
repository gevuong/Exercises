class Integer
  #instance method in_words
  def in_words
    hash = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three",
             4 => "four", 5 => "five", 6 => "six", 7 => "seven",
             8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven",
             12 => "twelve", 13 => "thirteen", 14 => "fourteen",
             15 => "fifteen", 16 => 'sixteen', 17 => 'seventeen',
             18 => 'eighteen', 19 => 'nineteen', 20 => "twenty",
             30 => 'thirty', 40 => 'forty', 50 => 'fifty',
             60 => 'sixty', 70 => 'seventy', 80 => 'eighty',
             90 => 'ninety' }

    tens_arr = [20, 30, 40, 50, 60, 70, 80, 90]
    if self > 20 && self < 100 && tens_arr.none? { |int| int == self }
      ones = self.to_s[1].to_i
      tens = (self.to_s[0] + "0").to_i
      word = hash[tens] + " " + hash[ones]
    else
      word = hash[self]
    end

    word
  end
end
