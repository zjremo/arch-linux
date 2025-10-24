print("hello, world")

-- 不给明时候键就从1开始
local tab1 = { key1 = "val1", key2 = "val2", "val3", "val4" }
for k, v in pairs(tab1) do
	print(k .. "-" .. v)
end
print("----------------------")
tab1.key1 = nil

for k, v in pairs(tab1) do
	print(k .. "-" .. v)
end

print(type(2)) -- number
print(type(2.2)) -- number
print(type("helloworld")) -- string

-- type的结果其实是返回的字符串
local x = nil
print(type(x))
-- 要进行判断必须要使用字符串，因为type的返回结果就是字符串
print(type(x) == nil) -- false
print(type(x) == "nil") -- true

-- 字符串连接使用..，不是使用+，使用+总会尝试将字符串转为数字进行加法运算
print("2" + 6)
print("2 + 6")
print("2" + "6")

-- 字符串连接
print("a" .. "b")
print(157 .. 4281000)

-- #计算字符串长度
local len = "www.runoob.com"
print(#len)
