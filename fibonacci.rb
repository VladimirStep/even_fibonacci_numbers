class Fibonacci
  def initialize(max_value = 4000000)
    @max_value = max_value
    @current_number = 2
    @previous_number = 1
    @sum = 0
  end

  def calculate_even_sum
    loop do
      break if @current_number > @max_value
      calculate
    end
    @sum
  end

  private

  def calculate
    sum_even
    step_forward
  end

  def step_forward
    @next_number = next_fibonacci_number
    @previous_number = @current_number
    @current_number = @next_number
  end

  def sum_even
    @sum += @current_number if @current_number.even?
  end

  def next_fibonacci_number
    @current_number + @previous_number
  end
end