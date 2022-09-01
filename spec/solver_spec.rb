require_relative '../solver'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  context 'Solver::factorial' do
    it 'with positive numbers should return factorial' do
      expect(@solver.factorial(5)).to eq(120)
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'with negative numbers should raise an error' do
      expect { @solver.factorial(-3) }.to raise_error(ArgumentError)
    end
  end

  context 'Solver::reverse' do
    it 'should inverse the order of consisting characters' do
      expect(@solver.reverse('amelia')).to eq('ailema')
    end
  end

  context '#fizzbuzz' do
    it 'should return string "fizz" if number is divisible by 3' do
      expect(Solver.new.fizzbuzz(3)).to eq 'fizz'
    end
    it 'should return string "Buzz" if number is divisible by 5' do
      expect(Solver.new.fizzbuzz(5)).to eq 'buzz'
    end
    it 'should return string "FizzBuzz" if number is divisible by 3 and 5' do
      expect(Solver.new.fizzbuzz(15)).to eq 'fizzbuzz'
    end
    it 'should return number as a string if number is not divisible by 3 or 5' do
      expect(Solver.new.fizzbuzz(1)).to eq '1'
    end
  end
end
