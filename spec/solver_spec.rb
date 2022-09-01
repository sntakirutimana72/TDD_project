describe 'Solver' do
  before(:each) do
    @solver_mock = double('solver')
  end

  context 'Solver::factorial' do
    it 'with positive numbers should return factorial' do
      allow(@solver_mock).to receive(:factorial).with(3).and_return(6)
      expect(@solver_mock.factorial(3)).to eq(6)
    end

    it 'with negative numbers should raise an error' do
      allow(@solver_mock).to receive(:factorial).with(-3).and_raise(ArgumentError)
      expect { @solver_mock.factorial(-3) }.to raise_error(ArgumentError)
    end
  end

  context 'Solver::reverse' do
    it 'should inverse the order of consisting characters' do
      allow(@solver_mock).to receive(:reverse).with('amelia').and_return('ailema')
      expect(@solver_mock.reverse('amelia')).to eq('ailema')
    end
  end

  context '#fizzbuzz' do
    it 'should return string "fizz" if number is divisible by 3' do
      allow(@solver_mock).to receive(:fizzbuzz).with(3).and_return('fizz')
      expect(@solver_mock.fizzbuzz(3)).to eq 'fizz'
    end
  it 'should return string "Buzz" if number is divisible by 5' do
    allow(@solver_mock).to receive(:fizzbuzz).with(5).and_return('buzz')
    expect(@solver_mock.fizzbuzz(5)).to eq 'buzz'
  end
  it 'should return string "FizzBuzz" if number is divisible by 3 and 5' do
    allow(@solver_mock).to receive(:fizzbuzz).with(15).and_return('fizzbuzz')
    expect(@solver_mock.fizzbuzz(15)).to eq 'fizzbuzz'
  end
  it 'should return number as a string if number is not divisible by 3 or 5' do
    allow(@solver_mock).to receive(:fizzbuzz).with(1).and_return('1')
    expect(@solver_mock.fizzbuzz(1)).to eq '1'
  end
end
end
