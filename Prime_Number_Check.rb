=begin

Create a Ruby program to check if a number is a Prime Number.

A prime number is a whole number that is divisible only by 1 and itself. 3 is a prime number
because it is only divisible by itself and 1.

1 is not considered prime, making 2 the firstprime number, and the only even prime number.

The time taken to check the number will be displayed. The program will be run similar to
in a class, and contained in a method called checkprime or similar.

time1 = Time .now
p = PrimeNumbers .new (1332331)
puts "#{ p. is_prime ?}"
puts Time . now - time1

The Time.now is used to take two timestamps to see how long to program took to execute.
When the application is complete it should be capable of checking if any given number is
prime or not.

Prime Number examples:
2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59,
61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131,
137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199
=end

#Declares the PrimeNumbers class
class PrimeNumbers

    # Defines the get and set methods for the class using the attr accessor.
    attr_accessor :number

    #Define the initialization method with parameter having number arugment
    def initialize(number)

        #Define instance variable @number which will store the number user enters
        @number = number
    end

    #Define the check_prime method. This method is public and it
    #checks the number entered by user. It also returns the time taken to check
    #the number(execute the program loop)
    def check_prime

      start_check_time = Time.now # Creates a start_check_time instance and use the Time class and .now method to get the time when check_prime method is called
      start_time = start_check_time.nsec #The .nsec method of the Time class is used to get time in nanoseconds
      
      #All numbers are divisible by 1 so that why we set prime_pointer to 2.
      prime_pointer=2  

      #Prime is divisible by itself or 1 only, so we need to check if the number entered can be divided by 
      #any number from 2 to @number-1. We Don't check divisibility by 1 as every number can be divided by 1
      #while loop is used to increment prime_pointer variable until its less than or equal to number-1
     
      while (prime_pointer<=@number-1) 
      
          # if the modulus result equal zero than user input is
          #divisible by an number between 2 to @number-1
        
          if(@number%prime_pointer == 0) 
            #breaks out of the loop
            break
          end
      prime_pointer += 1 # increment the pointer variable by 1 
      end 
      
      #if pointer equal number entered its a prime number(divisible by itself) else its not prime
      if (prime_pointer==@number)
          is_prime #calls the is_prime method
      else
          is_not_prime#calls the is_not_prime method
      end
     
      end_check_time = Time.now # Gets the time after the loops have executed and the number has been checked
      end_time = end_check_time.nsec #The .nsec method of the Time class is used to get time in nanoseconds
      time_taken = end_time - start_time #Calculates the time_taken to execute the the loop (check number)

      puts "\n It took #{time_taken} nanoseconds to check the number" # prints the value of time_taken to execute loop and the string

    end

    private #Makes methods private
    def is_prime #defines the is_prime method. if the number is prime this method is called in check_prime method.
        return puts "\n #{@number} is a Prime number." # prints the value of @number and string "is a Prime number"
    end

    def is_not_prime #defines the is_not_prime method.if the number is not prime this method is called in check_prime method.
        return puts "\n #{@number} is NOT a Prime number."#  prints the value of @number and string "is NOT a Prime number"
    end

end

#Prompts user what the program does and asks user to enter a number they would like to check
puts "\n\nThis Ruby program checks if the entered number is a Prime Number or not.\n\nPlease enter a number"

#stores the value user enters in user_input variable
user_input = gets().to_i

#create a new instance for primenumbers class with argument being the number entered by user
test_number = PrimeNumbers.new(user_input)

#test_number instance calls the check_prime method to begin checking if the entered number is prime or not
test_number.check_prime




#---------------------------------------------------------------------------------------
# code to test program
#comment lines 100 to 107 and uncomment lines below
# user_input = 1
# while user_input < 40 #40 sets the range, program checks 1 to 40
#   test_number = PrimeNumbers.new(user_input)
#   test_number.check_prime
#   user_input= user_input + 1
# end
