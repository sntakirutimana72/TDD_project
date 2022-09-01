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
end
