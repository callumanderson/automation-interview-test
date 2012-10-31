def fizzbuzz
    i = 0
    


	while i < 101
		fizz = 0
		buzz = 0
		i = i + 1
        
        puts i
		if i/3 == 0
	      fizz = 1   
	    end
		if i/5 == 0
		  buzz = 1
		end
		if fizz ==1 && buzz == 0
			puts "fizz"
		elsif fizz ==0 && buzz == 1
			puts "buzz"
		elsif fizz == 1 && buzz == 1
			puts "fizzbuzz"
		end
			
end#Add your solution to the fizzbuzz exercise here
