class Solver
  # @param num [Integer]
  def factorial(num)
    raise ArgumentError if num.negative?
    return 1 if num.zero? || num == 1

    num * factorial(num - 1)
  end

  # @param string [String]
  def reverse(string)
    string.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'

    elsif (num % 3).zero?
      'fizz'

    elsif (num % 5).zero?
      'buzz'
    else

      num.to_s
    end
  end
end
