#write your code here

def translate(string)
	words = string.split
	count = 0;
	while(count < words.length)
	word = words[count]
	if(word[0] == "a" or word[0] == "e" or word[0] == "i" or word[0] == "o" or word[0] == "u")
		words[count] = words[count] + "ay"
	else
		i = 0
		vowel = false
		letter = 0
		
		while(!vowel)
			if(word[i] == "a" or word[i] == "e" or word[i] == "i" or word[i] == "o" or word[i] == "u")
				vowel = true
				letter = i
			elsif(word[i] =="q" and word[i+1] == "u")
				vowel = true
				
				letter = i+2
			else
				i +=1
			end
		end
		if(word.capitalize==word)
		punct = /[[:punct:]]/.match(word[word.length-1])
		if(punct)
		words[count] = (word[letter..word.length-2] + word[0..letter-1] +  "ay" + word[word.length-1]).downcase.capitalize
		else
		words[count] = (word[letter..word.length] + word[0..letter-1] +  "ay").downcase.capitalize
		end
		else
		if(punct)
		words[count] = word[letter..word.length-2]+word[0..letter-1] + "ay" + word[word.length-1]
		else
		words[count] = word[letter..word.length]+word[0..letter-1] + "ay"
		end
		end
	end
	count += 1
	end
	words.join(" ").strip
end
