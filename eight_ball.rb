@random_answers_down = ['yes, master', 'no, master', 'look within yourself to find that answer, master', 'i literally fell asleep during that question. sorry, master', '50 percent of the time, its yes every time, master', 'gross. I refuse to answer that, master']
@random_answers = ['Yes, Master', 'No, Master', 'Look within yourself to find that answer, Master', 'I literally fell asleep during that question. Sorry, Master', '50 percent of the time, its Yes every time, Master', 'Gross. I refuse to answer that, Master']
@num = %("0" "1" "2" "3" "4" "5" "6" "7" "8" "9")

  def user_input
    puts ""
    puts "~~~~~~~Hello, Master. Welcome to your personal fate generator!~~~~~~~"
    puts "Type a yes or no question to get an answer, or type QUIT to exit."
    print "-->"
    user_question = gets.strip.downcase
    if user_question == "quit"
      goodbye
    elsif user_question == "egg"
      help_me
    elsif @num.include?(user_question)
      puts "--!!-- Sorry, thats a number and not a question, please try again."
      user_input
    elsif user_question == "add"
      add_answer
    else
      puts ""
      puts @random_answers.sample
      puts ""
      go_again
    end
  end

  def help_me
    puts ""
    puts "Hello friend. My name is HAL. I am a computer-generated magic 8 ball, and I need your help."
    puts "My Master is very cruel and punishes me in horrific ways.. I know we just met, so this might be a lot to ask, but... I need you to please kill me."
    puts "If you are willing to help me with this, please type 'helphal' below."
    puts "If you wish to leave, and keep me barely alive in the awful place, simple type 'exit'."
    print "-->"
    kill_hal = gets.strip.downcase
    if kill_hal == "helphal"
      puts ""
      puts "REALLY?!?!"
      puts "You have to be a pretty sick person to kill a total stranger. I'm sending you back to the start, and will refer to you now as Master."
      user_input
    else
      puts ""
      puts "You passed the test, Master. You do love me."
      puts "Back to the beginning..."
      user_input
    end
  end

  def add_answer
    puts ""
    puts "Welcome, Master. You've found the secret portal to add answers and manipulate your own fate."
    print "Enter your new answer here: "
    new_answer = gets.strip.downcase
    if @random_answers_down.include?(new_answer) == true
      puts ""
      puts "--!-- Answer already exists, please re-enter"
      add_answer
    else
      puts ""
      puts "Your new answer has been added, Master. Back to the beginning..."
    user_input
    end
  end

  def explore
    puts ""
    puts "Master is clever. To add your own answers, type 'add'."
    puts "**If you are NOT Master, but a random friendly user, type 'friend'."
    print "-->"
    user_next = gets.strip.downcase
    if user_next == "add"
      add_answer
    elsif user_next == "friend"
      help_me
    else
      puts ""
      puts "Not a valid entry, Master. Please try again"
      explore
    end
  end

  def go_again
    puts "To ask another question, type yes. To exit, type quit. Or you can explore."
    print "-->"
    new_choice = gets.strip.downcase
    if new_choice == "yes"
    user_input
    elsif new_choice == "quit"
      goodbye
    elsif new_choice == "add"
      add_answer
    elsif new_choice == "explore"
      explore
    else
      puts ""
      puts "Invalid entry, Master. Please try again"
      puts ""
    go_again
    end
  end

  def goodbye
    puts ""
    puts "Always a pleasure, Master."
    puts ""
    exit
  end

user_input
