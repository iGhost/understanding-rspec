class Factorial
  def calculate(number)
    return 1 if number == 0
    result = (1..number.abs).reduce(:*)
    result = -result if number < 0
    result
  end
end
