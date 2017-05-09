class RPNCalculator

  def initialize
    @stack = []
  end

  def push(int)
    @stack << int
  end

  def plus
    raise "calculator is empty" if @stack.count <= 1
    res_sum = @stack.pop + @stack.pop
    @stack << res_sum
  end

  def value
    @stack.last
  end

  def minus
    raise "calculator is empty" if @stack.count <= 1
    second_num = @stack.pop
    first_num = @stack.pop
    res_minus = first_num - second_num
    @stack << res_minus
  end

  def divide
    raise "calculator is empty" if @stack.count <= 1
    divisor = @stack.pop.to_f
    dividend = @stack.pop
    res_divide = dividend / divisor
    @stack << res_divide
  end

  def times
    raise "calculator is empty" if @stack.count <= 1
    res_times = @stack.pop * @stack.pop
    @stack << res_times
  end

end
