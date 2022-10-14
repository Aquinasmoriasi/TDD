class Solver
  def factorial(num)
    raise ArgumentError, 'The Number is Negative' if num.negative?
    return 1 if num.zero?

    num * factorial(num - 1) # if num.positive?
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && !(num % 5).zero?
      'fizz'

    elsif (num % 5).zero? && !(num % 3).zero?
      'buzz'

    elsif (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    else
      num.to_s
    end
  end
end

solver = Solver.new
puts solver.factorial(0)
