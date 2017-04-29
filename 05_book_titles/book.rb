class Book
# write your code here
attr_accessor :title

def title= (string)
words = string.split
count = 0
count2 = 0
little_words = ["and", "of", "the", "in", "a", "an"]
has_little_word = false
while(count < words.length)
	count2 = 0
	while (count2 < little_words.length)
		if(words[count] == little_words[count2] and count > 0)
			has_little_word = true
		end
		count2 += 1
	end
	if(!has_little_word)
		words[count] = words[count].capitalize
	end
	has_little_word = false
	count += 1
end
@title = words.join(" ")
end

end
