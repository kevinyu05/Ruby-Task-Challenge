require 'rspec'
require_relative 'rubyTaskListChallenge'

# Starting User Stories
# Story: As a developer, I can create a Task.

describe 'Task' do

  it 'has to be real' do
    expect{Task.new("string")}.to_not raise_error
  end
  # Story: As a developer, I can give a Task a title and retrieve it.
  it 'can add a title and retrieve it' do
    a_task = Task.new("string")
    expect(a_task.title).to eq "string"
  end
  # Story: As a developer, I can give a Task a description and retrieve it.
  it 'can give a task a description and retrieve it' do
    a_task = Task.new(0)
    a_task.add_description 2
    expect(a_task.description).to eq 2
  end
  # Story: As a developer, I can mark a Task done.
  # Story: As a developer, when I print a Task that is done, its status is shown.
  it 'can mark a task done' do
    a_task = Task.new("string")
    a_task.set_status "status"
    expect(a_task.status).to eq "status"
  end
end


describe 'Tasklist' do

  it 'has to be real' do
    expect{Tasklist.new}.to_not raise_error
  end
  # Story: As a developer, I can add all of my Tasks to a TaskList.
  it 'can add all of my tasks to a tasklist' do
    a_tasklist = Tasklist.new
    a_tasklist.add_task "task"
    expect(a_tasklist.list).to eq ["task"]
  end
  # Story: As a developer with a TaskList, I can get the completed items.
  it "I can get the completed items" do
    a_tasklist = Tasklist.new
    a_task = Task.new("title")
    a_task2 = Task.new("title 2")
    a_task.set_status("Complete")
    a_task2.set_status("Incomplete")
    a_tasklist.add_task a_task
    a_tasklist.add_task a_task2
    expect(a_tasklist.complete_tasks).to eq [a_task]
  end

  # Story: As a developer with a TaskList, I can get the incomplete items.
  it "I can get the incomplete items" do
    a_tasklist = Tasklist.new
    a_task = Task.new("title")
    a_task2 = Task.new("title 2")
    a_task.set_status("Complete")
    a_task2.set_status("Incomplete")
    a_tasklist.add_task a_task
    a_tasklist.add_task a_task2
    expect(a_tasklist.incomplete_tasks).to eq [a_task2]
  end
  # Story: As a developer, I can add items with due dates to my TaskList.
  # Hint: Consider keeping items with due dates separate from the other items.
  it 'can add all of my due date tasks to a tasklist' do
    a_tasklist = Tasklist.new
    a_tasklist.add_due_date_task "task"
    expect(a_tasklist.due_date_list).to eq ["task"]
  end
  # Story: As a developer with a TaskList, I can list all the not completed items that are due today.
  it 'can list all the not completed items that are due today' do
    a_tasklist = TaskList.new
  end


end

describe 'DueDateTask' do

  it 'has to be real' do
    expect{DueDateTask.new("title", "4/13/2018")}.to_not raise_error
  end
  # Story: As a developer, I can create a DueDateTask, which is-a Task that has-a due date.
  # Hint: Use the built-in Ruby Date class
  it 'is a Task that has a due date' do
    a_due_date_task = DueDateTask.new("title", "2/13/2019")
    expect(a_due_date_task.due_date).to eq "02/13/2019"
  end
  # Story: As a developer, I can print an item with a due date with labels and values.
  # Hint: When implementing to_s, use super to call to_s on the super class.
  it 'can print an item with a due date with labels and values' do
    a_due_date_task = DueDateTask.new("Brush Teeth", "04/25/2019")
    expect(a_due_date_task.info).to eq "Task: Brush Teeth, Due Date: 04/25/2019, Description: , Status: new"
  end
end

#
#
# Story: As a developer with a TaskList, I can list all the not completed items in order of due date.
# Story: As a developer with a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.
# end
#
