README (Ruby Version)

The technologies we are using for this technical test are Ruby, Watir and Cucumber. 

The first part of this test consists of a short exercise which should be answered using ruby. You should use the provided file to write your answer to the question. Be sure to run the solution a couple of times to confirm it works.

For the Cucumber + Watir portion of the exercise, you have been supplied a lightweight test harness which you will be expected to use. 

The test uses the Wikipedia app to test against.  Although we would ideally write outside in TDD code in the production environment, you are asked to retrofit the tests to the running application code.  This exercise is designed to test your technical knowledge rather than knowledge of processes and best practices.

All required dependencies are installed on the laptop for you. You are given a series of plain text scenarios describing some business rules.  Some of these have already been mapped to test scripts, but others have not.  You should write the test scripts for any scenarios that are not currently running and fix any broken scripts.  The outcome should be that all the tests are passing.

In case you are unfamiliar with Watir or Cucumber, I have provided a couple of cribsheets.

Question 1.  Fizbuzz.rb
Write a program in Ruby that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead of the number and for the multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz".

Question 2.  Cucumber + Watir + Ruby

Getting Started:

1. Clone the master from https://github.com/callumanderson/automation-interview-tes
1. Open up a terminal window
2. Navigate to the features directory (~/DownloadLocation/Ruby/Cucumber/features)
3. Run “rake cucumber” to run the tests
4. Implement any undefined steps, and fix any broken steps
5. Repeat steps 3 & 4 until all the scenarios are green
