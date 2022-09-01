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
end
