#Sets the command-line argument to a variable called 'input_integer'
input_integer = ARGV[0].to_i

#The prime_num_generator returns an array of the prime numbers less than the argument
def prime_num_generator(num)
	primes = []
	for i in (2...num) do
		for j in (2..i) do
			break if i % j == 0
		end
	primes << i if i == j
	end
	primes
end

#The additive_checker method checks if the secret method is additive and returns a boolean 
def additive_checker(num)
	primes_until_input = prime_num_generator(num)
	primes_until_input.each do |x|
		primes_until_input.each do |y|
			return false if secret(x + y) != secret(x) + secret(y)
		end
	end
	true
end

# To test a secret method, write the method below. I've included some of the tests I ran.  
# Make sure that the secret method you wish to check is uncommented. 
# Run this Ruby file from the command-line and include the number argument.  

# def secret (num)
# 	num
# end

# def secret (num)
# 	(num - 1)
# end

# def secret (num)
# 	(num * 7)
# end

#Calling the additive_checker method with the command-line argument.
additive_checker(input_integer)