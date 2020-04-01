# Anagram initializes taking a string.  The match method takes an array of 
# strings & returns an array only containing anagrams of initialized string.

class Anagram
	attr_accessor :word

	def initialize(word)
	    @word = word
	end

	def match(array)
	    array.delete_if {|a| @word.split("").sort != a.split("").sort}
	end
end

example = "car"
test = ["rat", "arc", "derp"]

tester = Anagram.new(example)
print "#{tester.match(test)}\n"
