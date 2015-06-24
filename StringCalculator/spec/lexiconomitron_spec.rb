require_relative("../lib/class_lexiconomitron.rb")

RSpec.describe("Lexiconomitron") do
	before(:each) do
		@lexi = Lexiconomitron.new
	end
    it "removes every letter t from the input" do
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end
    it "reverses order of every word in array and removes each letter t" do
      expect(@lexi.shazam(["great", "scott!"])).to eq(["aerg", "!ocs"])
    end
end