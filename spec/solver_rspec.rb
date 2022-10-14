require_relative '../solver.rb'

describe Solver do
  context '#initialize' do
   it 'creates a new instance of the Solver class' do
      solver = Solver.new
      expect(solver).to be_instance_of Solver
    end
  end
  context '#factorial' do
    it 'retuns n factorial for positive integers' do
      solver = Solver.new
      expect(solver.factorial(4)).to eq(24)
    end
     it 'retuns 1 is 0 is passed as an argument' do
      num = Solver.new
     expect(solver.factorial(0)).to eq(1)
    end
     it 'raises an ArgumentError if a negative value is given' do
      num = Solver.new
      expect{solver.factorial(-3)}.to raise_error(ArgumentError)
    end
  end
  context '#reverse' do
    it 'returns a reversed string' do
      solver = Solver.new
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end
  context '#fizzbuzz' do
    it 'returns fizz if the number passed as the argument is divisible by 3 but not with 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(3)).to eq('fizz')
    end
    it 'returns buzz if the number passed as the argument is divisible by 5 but not with 3' do
      solver = Solver.new
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end
    it 'returns fizzbuzz if the number passed as the argument is divisible by both 3 and 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end
    it 'returns fizz if the number passed as the argument is not divisible by both 3 and 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(4)).to eq('4')
    end
  end
end
