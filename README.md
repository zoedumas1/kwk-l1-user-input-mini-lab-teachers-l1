

## User Input Mini App
Now that we know about gets-ing and puts-ing, let's build a simple input/output app. The main objective is to create an application that _takes in user input, does something with that input, and then prints out an output_.

NOTE: This lab does not have tests, so the `learn` command won't work. Instead, just write your code and test it out manually by running ruby trip.rb in the command line. If the program does what you want it to, you're good to go and can use `learn submit` to submit your work!

### Gets
The first thing we need to do is take in user input with the `gets` method. Remember, when an executed Ruby program hits the method `gets`, the program is going to pause and wait for the user to enter text into the terminal.

The way `gets` takes in input is important to remember. First, it always takes in input as strings. If a user enters `10`, gets interprets that as `"10"`, not as an integer. The second thing to remember is that `gets` also takes in the newline character. When a user types in their input and then hits the `enter` button, gets keeps track of the input *plus* the line break. Basically, your variable storing the input looks like this:

```ruby
city = "nyc
"
```
See how the string doesn't end after the letter 'c', but actually jumps to the next line? That's the newline character that gets kept track of because of the user pressing the `enter` key after typing `nyc`. We don't want our string to include that newline character, so we have to add the `chomp` method to `gets` to remove that. So we'll use `gets.chomp`.

### The Challenge: A Visit to NYC
 You're going to build an application to plan a tourist's visit to NYC. You are going to need to create a new Ruby file by entering `touch trip.rb` into your terminal. Open `trip.rb` with your editor to start writing your program.

You'll want to ask the user where they would like to stay, what sites they want to visit, what food they want to eat, and how many nights they want to stay. For each question, you'll take in input from the user and store each piece in a variable. <img src="https://s3.amazonaws.com/after-school-assets/greetings.jpg" align="right" width="300" hspace="20">

Once you have that input stored, you'll want to use string methods (like upcase, downcase, captialize, etc) to put the input in a proper format. You can always take a look at the Ruby documentation [here](http://www.ruby-doc.org/core-2.1.2/String.html) to learn more about string methods you can use. 

Your final output should use *string interpolation* to output the data in a full summary of their NYC itinerary. 

Remember, you can execute your code by typing `ruby trip.rb` in terminal from inside the directory of this lab.

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/hs-user-input-mini-lab' title='User Input Mini App'>User Input Mini App</a> on Learn.co and start learning to code for free.</p>
