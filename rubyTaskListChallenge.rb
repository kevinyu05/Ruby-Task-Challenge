class Task
  attr_accessor :title, :description, :status

  def initialize(title, due_date = "N/A")
    @title = title
    @due_date
    @description
    @status = "new"
  end

  def add_description(description)
    @description = description
  end

  def set_status(status)
    @status = status
  end
end

class Tasklist
  attr_accessor :list, :complete_tasks, :incomplete_tasks, :due_date_list

  def initialize
    @list = []
    @complete_tasks = complete_tasks
    @incomplete_tasks = incomplete_tasks
    @due_date_list = []
  end

  def add_task(task)
    @list << task
  end

  def complete_tasks
    complete_tasks = @list.select {|el| el.status == "Complete"}
  end

  def incomplete_tasks
    incomplete_tasks = @list.select {|el| el.status == "Incomplete"}
  end
  def add_due_date_task(task)
    @due_date_list << task
  end
end

class DueDateTask < Task
  # attr_accessor
  def initialize(title, date_string)
    super
    @date_string = date_string
    @due_date = due_date
  end
  def info
    "Task: #{@title}, Due Date: #{@due_date}, Description: #{@description}, Status: #{@status}"
  end
  def due_date
    date_array = @date_string.split("/")
    computer_date = Time.new(date_array[2],date_array[0],date_array[1])
    @due_date = computer_date.strftime("%m/%d/%Y")
  end
end

# a_due_date_task = DueDateTask.new("Brush Teeth", "04/25/2019")
# p a_due_date_task.due_date

# time = Time.new
# p time.strftime("%d/%m/%Y")
# a_tasklist = Tasklist.new
# a_task2 = Task.new("title 2")
# a_task.set_status("Complete")
# a_task2.set_status("Incomplete")
# a_tasklist.add_task a_task
# a_tasklist.add_task a_task2
# p a_tasklist
# p a_tasklist.incomplete_tasks
