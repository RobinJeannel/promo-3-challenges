require_relative "coach_answer"
#TODO: Implement the program that makes you discuss with your coach from the terminal.

def student_interface
  student_input = ""
  until student_input == "I am going to work right now SIR !"
    puts "What do you want to say coach?"
    student_input = gets.chomp
    coach_answer(student_input)
  end

end

student_interface


