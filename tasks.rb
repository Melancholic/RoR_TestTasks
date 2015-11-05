#1
def solution1 s
	while(s.sub!(/(AB|AA)+/, 'A'))
	end
	while(s.sub!(/(CB|CC)+/, 'C'))
	end
	s
end

#2
def solution2 s
	(s.chars.uniq.delete_if{|x| s.count(x)%2==0}.length<=1)?1:0
end

#3
def solution3  s
	marker1 = s[0]
	marker2 = s[s[0]]
	while(marker1!=marker2) do
		marker1=s[marker1]
		marker2=s[s[marker2]]
	end
	len=1
	marker2=s[marker1]
	while(marker1!=marker2)
		marker2 = s[marker2]
		len+=1
	end
	len
end

#4
def triangle?(p,q,r)
    (p+q>r) && (q+r > p) &&(r+p>q)
end
def solution4 s
	max_perimeter=-1
	s.sort!
	(s.length-1).downto(0) do |i|
		break if i<2
		if(triangle?(s[i],s[i-1],s[i-2]))
			perimeter=s[i]+s[i-1]+s[i-2]
			max_perimeter=perimeter if perimeter > max_perimeter
			break
		end
	end
	max_perimeter
end
