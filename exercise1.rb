file_contents = IO.read("my_file.txt")
IO.write()
puts "What is the source file?"
first_file = gets.chomp
puts "What is the destination file?"
destination_file = gets.chomp
IO.write('first_file.txt', destination_file)