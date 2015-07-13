require_relative("../lib/string_calculator.rb")

RSpec.describe("String calculator") do
	it("adds 10 and 20") do
		calc = StringCalculator.new
		expect(calc.add("10,20")).to eq(30)
	end

	it("adds 150 and 23") do
		calc = StringCalculator.new
		expect(calc.add("150,33")).to eq(183)
	end

	it("returns 42 if given only that number") do
		calc = StringCalculator.new
		expect(calc.add("42")).to eq(42)
	end

	it("returns 100 if given only that number") do
		calc = StringCalculator.new
		expect(calc.add("100")).to eq(100)
	end

	it("returns 0 for empty string") do
		calc = StringCalculator.new
		expect(calc.add("")).to eq(0)
	end

	it("adds more than 2 numbers") do
		calc = StringCalculator.new
		expect(calc.add("42,50,78,73,90")).to eq(333)
	end

	it("handles numbers seperated by new lines") do
		calc = StringCalculator.new
		expect(calc.add("11\n22\n33")).to eq(66)
	end
end