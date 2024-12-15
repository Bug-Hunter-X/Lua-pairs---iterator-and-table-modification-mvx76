local function foo(t)
  local copy = {}
  for k, v in pairs(t) do
    copy[k] = v
  end

  for k, v in pairs(copy) do
    if type(v) == "table" then
      foo(v)
    else
      --Modify the copy here
      copy[k] = v * 2
    end
  end
  return copy
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
local modified_t = foo(t)
print(modified_t)