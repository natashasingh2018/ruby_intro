class ProgramsController < ApplicationController
  def home
    # Your code goes below.

    my_birthday = Time.parse("May 4, 1989")
    today = Time.now
    seconds_since_i_was_born = today - my_birthday

    @your_output = seconds_since_i_was_born

    first = "Natasha"
  last = "Singh"

  @first_then_last = first + " " + last

  @last_then_first = last + ", " + first

    render("programs/home.html.erb")
  end

  def first_program
    # Your code goes below.

    the_number = rand(100)

 if the_number < 25
   @your_output = "It's going to be your lucky day today"
 elsif the_number > 75
   @your_output = "Don't leave home today"
 else
   @your_output = "It'll be an okay day today"
 end

    render("programs/first_program.html.erb")
  end

  def second_program
    # Your code goes below.

 #  the_number = rand(100)
 #
 #  if the_number < 33
 #   @your_output = "rock"
 # elsif the_number < 66  && the_number > 34
 #   @your_output = "paper"
 #  else
 #   @your_output = "scissors"
 #  end
 # how do to part 2 of displaying winner?

  our_numbers = [4, 10, 6]        # Create an array of numbers
    squared_numbers = []            # Create an empty array

    our_numbers.each do |num|       # For each element in numbers, (refer to it as "num")
      square = num * num            # Square the number
      squared_numbers.push(square)  # Push it into the squared_numbers array
    end

    @your_output = squared_numbers.sum  # Sum the squares


    render("programs/second_program.html.erb")
  end



  def third_program
    numbers = (1..999).to_a

    # Your code goes below.

    @your_output = "sum of squares"

    render("programs/third_program.html.erb")
  end
end
