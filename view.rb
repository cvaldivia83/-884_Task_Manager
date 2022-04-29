class View
  def display(array)
    array.each_with_index do |task, index|
      puts "#{index + 1} - #{task.done? ? "[X]" : "[ ]"} -  #{task.description}"
    end
  end

  def ask_user_for_task
    puts ">"
    puts "What is the name of your task?"
    answer = gets.chomp
  end

  def ask_user_to_mark_as_done
    puts ">"
    puts "Which task would you like to mark as done?"
    index = gets.chomp.to_i - 1
  end

  def ask_user_to_delete_task
    puts ">"
    puts "Which task would you like to delete?"
    answer = gets.chomp.to_i - 1
  end
end
