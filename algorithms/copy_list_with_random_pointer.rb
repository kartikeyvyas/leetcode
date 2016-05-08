class ListNode
  attr_accessor :val, :next, :random
  def initialize(val)
    @val = val
    @next = nil
    @random = nil
  end
end

def get_copied_list(head)
  dummy = new_list = ListNode.new("hello 0x01f7")
  until head.nil?
    new_node = ListNode.new(head.val)
    new_list.next = new_node
    new_list = new_list.next
    new_list.random = head
    prev = head
    head = head.next
    prev.next = new_list
  end
  dummy.next
end

def copy_linked_list(head)
  answer = copied_list = get_copied_list(head)
  until copied_list.nil?
    random = copied_list.random.random
    copied_list.random = random.nil? ? nil : random.next
    copied_list = copied_list.next
  end
  answer
end
