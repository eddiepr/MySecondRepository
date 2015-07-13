require_relative("spam_user_class")

#require_relative("email_notifier_class")
# nizar = User.new("email")
# nizar.email = "nizar@ironhack.com"

# fernando = User.new("twitter")
# fernando.twitter = "azaru"

# josh = User.new("facebook")
# josh.facebook = "jalexy12"

nizar = User.new
puts nizar.twitter
# nizar.email = "nizar@ironhack.com"
# notifier = NotifierFactory.for_user(nizar)
# notifier.send_message #=> Email-related message





notifier = NotifierFactory.for_user(nizar)
notifier.send_message