lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join

puts "#{line_count} lines"


=begin
*Original code to open a .txt file and analyze it

text = ''
line_count = 0
File.open("text.txt").each do |line|
	line_count += 1
	text << line
end	 

puts "#{line_count} lines"

=end