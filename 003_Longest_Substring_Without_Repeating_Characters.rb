# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
	max = 0
	n = ""
	s.each_char do |c|
		i = n.index(c)
		n = ( i ? n[ i + 1 .. -1 ] : n ) + c
		max = n.size if n.size > max
	end
	max
end
