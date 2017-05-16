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
    #@hash = hash
    return "zero" if self == 0

    # if self >= 1000 && self <= 999999
    #   remainder = self % 1000
    #
    if self >= 100 && self <= 999
      word = hundreds_in_word
    elsif self >= 20 && self < 100
      word = tens_in_word
    else
      word = less_than_20_in_word
    end

    word
  end

  def hundreds_in_word
    hash = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three",
              4 => "four", 5 => "five", 6 => "six", 7 => "seven",
              8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven",
             12 => "twelve", 13 => "thirteen", 14 => "fourteen",
             15 => "fifteen", 16 => 'sixteen', 17 => 'seventeen',
             18 => 'eighteen', 19 => 'nineteen', 20 => "twenty",
             30 => 'thirty', 40 => 'forty', 50 => 'fifty',
             60 => 'sixty', 70 => 'seventy', 80 => 'eighty',
             90 => 'ninety' }

    remainder = self % 100
    if remainder == 0
      word = hash[ self / 100 ] + " " + "hundred"
    elsif remainder < 20 && remainder > 0
      hundreds = self / 100
      word = hash[hundreds] + " " + "hundred" + " " + hash[remainder]
    else
      ones = self % 10
      tens = self % 100 / 10 * 10
      hundreds = self / 100
      word = hash[hundreds] + " " + "hundred" + " " + hash[tens] + " " + hash[ones]
    end

    word
  end

  def tens_in_word
    #values_in_words

    remainder = self % 10
    if remainder == 0
      word = less_than_20_in_word
    else
      ones = remainder
      tens = self / 10 * 10
      word = values_in_words(tens) + " " + values_in_words(ones)
    end

    word
  end

  def less_than_20_in_word
    values_in_words(self)
  end

  def values_in_words(int)
    hash = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three",
              4 => "four", 5 => "five", 6 => "six", 7 => "seven",
              8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven",
             12 => "twelve", 13 => "thirteen", 14 => "fourteen",
             15 => "fifteen", 16 => 'sixteen', 17 => 'seventeen',
             18 => 'eighteen', 19 => 'nineteen', 20 => "twenty",
             30 => 'thirty', 40 => 'forty', 50 => 'fifty',
             60 => 'sixty', 70 => 'seventy', 80 => 'eighty',
             90 => 'ninety' }
    hash[int]
  end
end
