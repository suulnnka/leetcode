# @param {String} s
# @param {String} p
# @return {Boolean}

def match(s,a,p,b)

	n = $m[a]
	
	return n[b] if n and n[b] != nil
	
	if not n
		n = []
		$m[a] = n
	end
	
	if p.size == b
		return n[b] = true if s.size == a
		return n[b] = false
	end
	
	if s.size == a
		return n[b] = match(s,a,p,b+2) if p[b+1] == "*"
		return n[b] = false
	end
	
	if p[b+1] != "*"
		return n[b] = match(s,a+1,p,b+1) if p[b] == "." or s[a] == p[b]		
		return n[b] = false
	end
	
	# opt
	return n[b] = match(s,a,p,b+2) if p[b] == p[b+2] and p[b+3] == "*" 
	
	return n[b] = true if match(s,a,p,b+2) 
	
	if p[b] == "." or s[a] == p[b]
		return n[b] = match(s,a+1,p,b)
	end
	
	n[b] = false
	
end

def is_match(s, p)
	$m = []
	match(s,0,p,0)
end
