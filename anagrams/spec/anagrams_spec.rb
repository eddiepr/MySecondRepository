require_relative("../lib/class_anagram.rb")

RSpec.describe("") do 
	before(:each) do
		@ana = Anagram.new
	end
	it ("will make an anagram of the word") do
		expect(@ana.list_anagrams("enlist")).to eq(["enlist", "inlets", "listen", "silent"])
	end

	it ("compare 2 words that are anagrams") do
		expect(@ana.compare("enlist", "listen")).to eq(true)
	end

	it ("compares 2 words that are not anagrams") do
		expect(@ana.compare("enlist", "boaters")).to eq(false)
	end
end

