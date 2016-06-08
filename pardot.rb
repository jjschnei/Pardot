#sets the variable num to the command-line argument 
num = ARGV[0].to_i

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



#testing additive_checker with different secret methods
# def secret (num)
# 	num
# end

# def secret2 (num)
# 	(num - 1)
# end

# def secret3 (num)
# 	(num * 7)
# end
#
#additive_checker 50



