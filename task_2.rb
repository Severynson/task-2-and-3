# lines = []
#
# File.open("numbers.txt") do |review_file|
#   lines = review_file.readlines
# end
#
# relevant_lines = lines.find_all { |line| line.include?2}
#
# puts relevant_lines

###############################################################################

# lines = []
#
# File.open("numbers.txt") do |review_file|
#   lines = review_file.readlines
# end
#
# relevant_lines = lines.find_all { |line| line.include?(lines.even?)}
#
# puts relevant_lines



#{ |number| number.even? }

# puts [1, 2, 3, 4].even?
# p [1, 2, 3, 4, 5].find_all { |number| number.even? }


# somearray = ["some", "thing"]
# anotherarray = ["another", "thing"]
# somearray.push(anotherarray)
# puts anotherarray


#################################################################################################


# lines = []
# File.open("numbers.txt") do |review_file|
#   lines = review_file.readlines
# end
#
# def puts_string (lines)
#   word =lines.split(" ")
#   oop = word.find_all.sum{ |number| number.odd? }
# evv = word.find_all.sum{ |number| number.even? }
#   sumary  = oop + evv
# puts sumary
# end
# puts puts_string
#  # # puts  lines.find_all { |number| number.odd? }
#  #  puts  lines.find_all { |number| number.even? }
#
# def puts_string
#   word = string.split(" ")
#   oop = word.find_all.sum{ |number| number.odd? }
#   evv = word.find_all.sum{ |number| number.even? }
#   sumary  = oop + evv
# end
# #
# def puts_string
#   word =lines.split(" ")
#   oop = word.find_all.sum{ |number| number.odd? }
#   evv = word.find_all.sum{ |number| number.even? }
#   sumary  = oop + evv
# end
# lines = []
# file= File.open("numbers.txt") do |opert|
#   lines= opert.readlines
# end
# p lines

###########################################################################################################
lines = []
File.open("numbers.txt") do |review_file|
  lines = review_file.readlines
end

num = lines.map(&:to_i)

odd_num_sum = num.find_all(&:odd?).sum
even_num_sum = num.find_all(&:even?).sum
num_sum = num.sum

File.open("Output.txt", "w") do |file_open_and_write|
  file_open_and_write.write("Odd numbers:#{odd_num_sum}\nEven numbers:#{even_num_sum}\nSum of numbers:#{num_sum}")
end