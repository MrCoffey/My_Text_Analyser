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

#Opening file and counting lines 
lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join

puts "#{line_count} lines"

#Counting characters
total_characters = text.length
puts "#{total_characters} characters"

#Eradicating blank spaces
total_characters_nospaces = text.gsub(/\s+/, '').length
puts "#{total_characters_nospaces} characters excluding spaces"

#counting words
word_count = text.split.length
puts "#{word_count} words"

#Counting Sentences and Paragraphs (pipes split the three characters)
paragraph_count = text.split(/\n\n/).length
puts "#{paragraph_count} paragraphs"

sentence_count = text.split(/\.|\?|!/).length
puts "#{sentence_count} sentences"

#Calculating Averages
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"

#omitting stop words %w shortcut to omit "" in strings
stopwords = %w{the a by on for of are with just but and to the my I has some in}