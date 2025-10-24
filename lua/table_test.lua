-- 空table
local tbl1 = {}

-- 初始化表
local tbl2 = { "apple", "pear", "orange", "grape" }

local a = {}
a["key"] = "value"
local key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
	print(k .. " : " .. v)
end

print("----------------------------")
for k, v in pairs(tbl1) do
	print(k .. " : " .. v)
end
print("----------------------------")
for k, v in pairs(tbl2) do
	print(k .. " : " .. v)
end

local a3 = {}
for i = 1, 10 do
	a3[i] = 1
end
a3["key"] = "val"
print(a3["key"])
print(a3["none"])
