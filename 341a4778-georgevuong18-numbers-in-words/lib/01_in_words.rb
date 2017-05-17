class Integer
  #instance method in_words
  def in_words
    #@numbers_in_words = numbers_in_words
    return "zero" if self == 0
    if self >= 1000 && self <= 999999
      thousands_in_words
    elsif self >= 100 && self <= 999
      hundreds_in_words
    elsif self >= 20 && self < 100
      tens_in_words(self)
    else
      less_than_20_in_words
    end
  end

  def thousands_in_words
    remainder = self % 1000
    if remainder == 0
      word = numbers_in_words(self / 1000) + " " + "thousand"
    elsif
      thousands = self / 1000
      hundreds = self % 1000 / 100
      tens = self % 100 / 10 * 10
      ones = self % 10
      word = tens_in_words(thousands) + " " + "thousand" + " " + numbers_in_words(hundreds) + " " + "hundred" + " " +  numbers_in_words(tens) + " " + numbers_in_words(ones)
    end

    word
  end

  def hundreds_in_words
    remainder = self % 100
    if remainder == 0
      word = numbers_in_words(self / 100) + " " + "hundred"
    elsif remainder < 20 && remainder > 0
      hundreds = self / 100
      word = numbers_in_words(hundreds) + " " + "hundred" + " " + numbers_in_words(remainder)
    else
      ones = self % 10
      tens = self % 100 / 10 * 10
      hundreds = self / 100
      word = numbers_in_words(hundreds) + " " + "hundred" + " " + numbers_in_words(tens) + " " + numbers_in_words(ones)
    end

    word
  end

  def tens_in_words(int)
    remainder = int % 10
    if remainder == 0
      word = less_than_20_in_words
    else
      ones = remainder
      tens = int / 10 * 10
      word = numbers_in_words(tens) + " " + numbers_in_words(ones)
    end

    word
  end

  def less_than_20_in_words
    numbers_in_words(self)
  end

  def numbers_in_words(int)
    number_in_word = { 0 => "zero", 1 => "one", 2 => "two", 3 =>     "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven",
              8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven",
             12 => "twelve", 13 => "thirteen", 14 => "fourteen",
             15 => "fifteen", 16 => 'sixteen', 17 => 'seventeen',
             18 => 'eighteen', 19 => 'nineteen', 20 => "twenty",
             30 => 'thirty', 40 => 'forty', 50 => 'fifty',
             60 => 'sixty', 70 => 'seventy', 80 => 'eighty',
             90 => 'ninety'}
    number_in_word[int]
  end
end
