class TodoList
	attr_reader :title, :items 
   	def initialize(title)
   		@title = title
   		@items = Array.new
   	end
end

class Item
    attr_reader :description, :completed_status 
    def initialize(item_description)
    	@description = item_description
    	@completed_status = false
    end
end
