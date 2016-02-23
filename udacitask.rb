require_relative 'todolist.rb'

# Creates a new todo list
tasks = TodoList.new("Tasks")

# Add four new items
tasks.add_item("Submit Letter of Intent")
tasks.add_item("Finalize applications")
tasks.add_item("Submit budget proposal")
tasks.add_item("Print promotional materials")

# Print the list
tasks.print_list

# Delete the first item
tasks.delete_item(0)

# Print the list
tasks.print_list

# Delete the second item
tasks.delete_item(1)

# Print the list
tasks.print_list

# Update the completion status of the first item to complete
tasks.complete_item(0)

# Print the list
tasks.print_list

# Update the title of the list
tasks.update_title

# Print the list
tasks.print_list