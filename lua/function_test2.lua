function testFun(tab, fun)
	for k, v in pairs(tab) do
		print(fun(k, v))
	end
end

local tab = { key1 = "val1", key2 = "val2" }
testFun(tab, function(key, val)
	return key .. "=" .. val
end)
