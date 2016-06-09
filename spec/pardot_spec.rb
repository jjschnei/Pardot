require_relative('../pardot')

# Tests to see if prime_num_generator is returning an array of prime numbers less than its argument. 
describe '#prime_num_generator' do
	it 'returns an array' do
		expect(prime_num_generator(5)).to be_a(Array)
	end

	it 'returns an array with prime numbers' do
		expect(prime_num_generator(20)).to eq([2,3,5,7,11,13,17,19])
	end

	it 'returns an array where all elements < argument' do
		expect(prime_num_generator(23).sort[-1]).to be < 23
	end
end


# Test to see if additive_checker correctly returns true for this secret method example
describe '#additive_checker' do 
	before(:each) do
		def secret(num)
			num
		end
	end
	context '#secret returns its argument' do
		it 'returns true' do
			expect(additive_checker(10)).to eq(true)
		end
	end
end

# Test to see if additive_checker correctly returns false for this secret method example
describe '#additive_checker' do 
	before(:each) do
		def secret(num)
			num - 1
		end
	end

	context '#secret subtracts from argument' do
		it 'returns false' do
			expect(additive_checker(10)).to eq(false)
		end
	end
end