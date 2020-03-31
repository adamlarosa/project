require 'pry'
class Anagram
	attr_accessor :word

	def initialize(word)
	    @word = word
	end

	def match(array)
	    array.delete_if {|a| @word.split("").sort != a.split("").sort}
	end
end
binding.pry
p
