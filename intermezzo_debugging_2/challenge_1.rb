class LetterCounter
	def initialize(text)
		@text = text
	end

	def calculate_most_common() 
		counter = Hash.new(0) # default value is set in the parenthesis of the key value
		most_common = nil # this is alright 
		most_common_count = 1 # should the count start at 1 or 0
		@text.chars.each do |char|
			next unless is_letter?(char) # checks if |char| is a letter
			counter[char] += 1 # took away || 1
			if counter[char] > most_common_count
				most_common = char
			  most_common_count = counter[char] # took away +=
			end
		end
		return [most_common_count, most_common]
		binding.irb
	end
  
	private

	def is_letter?(letter)
		return letter =~ /[a-z]/i # the i means that its not case sensitive
	end
end
  
  counter = LetterCounter.new("Digital Punk")
  p counter.calculate_most_common
  
  # Intended output:
  # [2, "i"]