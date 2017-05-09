class RPNCalculator

  def initialize
    @stack = []
  end

  def push(int)
    @stack << int
  end

  def plus
    res_sum = @stack.pop + @stack.pop
    @stack << res_sum
  end

  def value
    @stack.last
  end

  def minus
    second_num = @stack.pop
    first_num = @stack.pop
    res_minus = first_num - second_num
    @stack << res_minus

  
  end
end
