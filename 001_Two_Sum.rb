# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    h = {}
	nums.each_with_index do |n,i|
		t = h[target-n]
		return [ t+1 , i+1 ] if t
		h[n] = i
	end
end
