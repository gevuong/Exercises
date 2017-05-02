def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(arr)
  return 0 if arr == []
  arr.reduce(:+)
end

def multiply(num1, num2)
  num1 * num2
end

def power(num1, num2)
  num1**num2
end

def factorial(num)
  return 1 if num == 0
  (1..num).reduce(:*)
end
