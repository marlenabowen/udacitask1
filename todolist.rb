class TodoList

	attr_reader :title, :items 

   	def initialize(title)
   		@title = title
   		@author = "Marlena"
   		@items = Array.new
   	end

   	def add_item(new_item)
   		item = Item.new(new_item)
   		@items.push(item)
   	end

   	def print_list
   		puts
   		puts "#{@author}'s #{@title}" 
        puts "___________________________________"
        print_items
        puts "___________________________________"
    end
    
    def print_items
        @items.each do |item|
            item.print_each_item(item)
        end
    end
    
    def delete_item(item_position)
        @items.delete_at(item_position)
    end
        
    def update_title
        @title = "Task List"  
    end
    
    def complete_item(item_position)
        @items.at(item_position).complete_item_status
    end

    def incomplete
        @items.each do |item|
            item.not_complete 
        end
    end

end

class Item

    attr_reader :description, :due_date, :completed_status

    def initialize(item_description)
    	@description = item_description
    	@due_date = "one week"
    	@completed_status = false
    end

    def complete_item_status
    	@completed_status = true
    end

    def print_each_item(item)
        puts
        puts "Item: #{@description}"
        puts "Due date: #{@due_date}"
        puts "Completed status: #{@completed_status}" 
        puts
    end

    def not_complete
        @completed_status = false
    end

end

