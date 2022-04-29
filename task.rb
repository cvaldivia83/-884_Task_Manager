# 1 - Task class (description, done)x
# 2 - Save the tasks somewhere
# 3 - Ask user for a description
# 4 - Save the task description
class Task
  attr_reader :description
  def initialize(description)
    @description = description
    @done = false
  end

  def done?
    @done
  end

  def done!
    @done = true
  end
end
