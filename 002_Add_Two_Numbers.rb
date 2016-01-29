# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

def tonum(l)
	return 0 if l.nil?
	l.val + tonum(l.next) * 10
end

def tonode(n)
	return nil if n.zero?
	l = ListNode.new(n%10)
	l.next = tonode(n/10)
	l
end

def add_two_numbers(l1, l2)
    l = tonode( tonum(l1) + tonum(l2) )
	l ? l : ListNode.new(0)
end
