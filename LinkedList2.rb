  class LinkedListNode
    attr_accessor :value, :previous

    def initialize(value, previous=nil)
        @value = value
        @previous = previous
      end
   end 

 class Head
    attr_reader :data

    def initialize
        @data = nil
    end

    def push(value)
       @data = LinkedListNode.new(value, @data)
    end

    def pop
        return print "nil\n" if @data.nil?
        print "#{@data.value}\n"
        @data = @data.previous
     end 

end

    def reverse_list(list, previous=nil)
      head = Head.new
      while list
        head.push(list.value)
        list = list.previous
    end

    return head.data
   end 

   def print_values(list_node)
    if list_node
        print "#{list_node.value} --> "
        print_values(list_node.previous)
    else 
        print "nil\n"
        return
    end 
end 

node1 = LinkedListNode.new(12)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(37, node2)

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)