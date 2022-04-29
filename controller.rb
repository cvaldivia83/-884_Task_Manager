require_relative "task"
require_relative "view"

class Controller #boss
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  def list
    # 1. Fetch tasks from repo
    tasks_array = @repository.all
    # 2. Send tasks array to view for display
    @view.display(tasks_array)
  end

  def create
    # 1. Ask the user for a task
    new_task = @view.ask_user_for_task # "Do the laundry"
    # 2. Instantiate a task using user's anwers
    task = Task.new(new_task)

    # 3. Send new task to the repository
    # 4. Save it
    @repository.add(task)
  end

  def mark_as_done
    # 1. List all tasks to user
    list
    # 2. Ask my user which task he wants to mark as done
    index = @view.ask_user_to_mark_as_done

    # 3. Find task inside the tasks array
     task = @repository.find(index)
    # 4. Mark task as done
    task.done!
  end

  def destroy
    # 1. List all tasks to user
    list
    # 2. Ask user to choose a task to delete
    # 3. Save user's answer in a variable
    index = @view.ask_user_to_delete_task

    # 5. Delete the task from the array
    @repository.remove(index)
  end
end
