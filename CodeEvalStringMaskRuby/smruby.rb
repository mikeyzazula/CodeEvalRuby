#Michael Zazula
#String Mask Ruby

#open the file and for every do ... 
File.open(ARGV[0]).each_line do |line|
	
	#goes through the string and grabs all the ints 
	numbers = line.gsub(/\D/, '')
	#same as above, but for letters
	letters = line.gsub(/\d/, '').strip

	#variable for our for loop
	value = letters.length 
	
	#how we will iterate through the list 
	x= 0

	#until 0 is the length of the string do... 
	while x <= value do
	    #compares position 0 of the string letters to the position 0 of numbers, if it equals one upcase it, else add 1 to x and run again. 
	    if numbers[x].to_i == 1
			letters[x] = letters[x].upcase
	    	x += 1
	    else
	    	x+=1
	    end

	end
  puts letters

end
