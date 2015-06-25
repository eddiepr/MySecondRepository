require_relative("../lib/class_email_provider.rb")

RSpec.describe("email subject check") do 
	let(:match_provider) do
		subject = ["Let's sync tomorrow",
			"Urgent: we need to sync: need your reply",
			"Hey",
			""
		]
		instance_double("EmailProvider", {:subject => subject})
	end
	let(:no_match_provider) do
		subject = ["Let's sync tomorrow",
				"Urgent: we need to sync",
				"dinner"
			]
		instance_double("EmailProvider", {:subject => subject})
	end

	it ("it matches all the words") do
		checker = WordChecker.new(match_provider)
		check = checker.check_for_words(["sync", "urgent", "reply"])
		expect(check).to eq(true)
	end

	it ("it DOES NOT match all the words") do
		checker = WordChecker.new(no_match_provider)
		check = checker.check_for_words(["sync", "urgent", "reply"])
		expect(check).to eq(false)
	end
end

