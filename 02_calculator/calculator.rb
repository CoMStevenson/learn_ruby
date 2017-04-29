#write your code here

def add (one, two)
	one + two
end

def subtract (one, two)
	one - two
end

def sum(arr)
	sum = 0
	count = 0
	while (count < arr.length)
		sum = add(sum, arr[count])
		count += 1
	end
	sum
end

def multiply(*args)
	product = 1 
	count = 0
	if(count < args.length)
		product = 1
	end
	while (count < args.length)
		product = product * args[count]
		count += 1
	end
	product
end

def power(one, two)
	one**two
end

def factorial(num)
	if(num == 0)
		1
	elsif(num == 1)
		1
	elsif(num < 0)
		-1
	else
		product = 1
		count = 1 
		while (count <= num)
			product = product * (count)
			count = count +1
		end
		product
	end
end
