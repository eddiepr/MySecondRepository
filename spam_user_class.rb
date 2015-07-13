

class User

	attr_accessor :email
	attr_accessor :facebook
	attr_accessor :twitter
	# def initialize(communication_method)
	# 	@communication_method = communication_method


	# def initialize(communication_method)
	# 	@communication_method = communication_method
	# 	case communication_method
	# 	when :email
	# 		Notify.new("email")
	# 	when :facebook
	# 		Notify.new("facebook")
	# 	when :twitter
	# 		Notify.new("twitter")
	# end	
end



class Notify
	def self.for_user(user)
	    if !user.email.nil?
	      # Email notifier
	    elsif !user.twitter.nil?
	      # Twitter notifier
	    elsif !user.facebook.nil?
	      # Facebook notifier
	    end
	  end
	# def self.from_brand(brand)
	# 	case brand 
	# 	when :email
	# 		Email.new
	# 	when :facebook		
	# 		Facebook.new
	# 	when :twitter 
	# 		Twitter.new
	    # if !user.email.nil?
	    #   # Email notifier
	    # elsif !user.twitter.nil?
	    #   # Twitter notifier
	    # elsif !user.facebook.nil?
	    #   # Facebook notifier
	    # end
  	# end
end