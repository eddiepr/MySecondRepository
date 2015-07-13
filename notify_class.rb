class Notify
	def self.from_brand(brand)
		case brand 
		when :email
			Email.new
		when :facebook		
			Facebook.new
		when :twitter 
	    # if !user.email.nil?
	    #   # Email notifier
	    # elsif !user.twitter.nil?
	    #   # Twitter notifier
	    # elsif !user.facebook.nil?
	    #   # Facebook notifier
	    # end
  	end
end