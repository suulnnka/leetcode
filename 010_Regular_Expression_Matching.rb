# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
	Regexp.new("^"+p+"$").match(s) != nil
end
