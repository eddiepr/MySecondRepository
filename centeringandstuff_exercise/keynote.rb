require 'terminfo'

read = IO.read("slides.txt")
slides_array = read.split("--")
array_length = slides_array.length
count = 0
display_slides = (if slides_array[array_length - array_length + count] != nil
	puts slides_array[count] 
	count = count + 1
end)
display_slides
#if user types next and count <= array_length, run if statement again, if user clicks back button do another if statement 
#where you puts slides_array[count-2] and count = count - 2 or 1 or something
screen_size = p TermInfo.screen_size

screen_size[0]


# slide1 = Slide.new(slides_array[0])

# startx = screen_size[1] - (length(string)/2)
# starty
# puts "             " + slide1
# puts string2

slide1 = Slide.new(slides_array[0])
startx1 = screen_size[1] - (slide1.length/2)
starty1 = screen_size[0] / 2

puts (" " * startx ) + slide1 
puts 
