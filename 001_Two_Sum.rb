# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    h = {}
	nums.each_with_index do |n,i|
		return [ h[target-n]+1 , i+1 ] if h[target-n]
		h[n] = i
	end
end
