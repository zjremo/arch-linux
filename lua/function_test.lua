function factorial1(n)
	if n == 0 then
		return 1
	else
		return n * factorial1(n - 1)
	end
end

print(factorial1(5))
factorial2 = factorial1
print(factorial2(5))
