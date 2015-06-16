class Blog
	def initialize 
		@posts = []
	end
	def add_post(post) 
		@post = post
		@posts.push(post)	
	end
	def publish_front_page
		@posts.each do |i|
			puts i 
		end
	end
end

class Post 
	def initialize(title, date, text)
		@title = title
		@date = date
		@text = text
		return [@title, @date, @text]
	end
	def print_post
		puts @title
		puts @date
		puts "***********"
		puts @text
		puts "-----------"
	end
end

post1 = Post.new("About Me", "June 15, 2015", "I am Eddie.")
post2 = Post.new("favorite movies", "June 15, 2015", "Titanic, Up")
#each post is an item of the blog array
blog1 = Blog.new
blog1.add_post(post1)
blog1.add_post(post2)
blog1.publish_front_page