```elixir
list = [1, 2, 3, 4, 5]

result = 0
found_three = false

Enum.each(list, fn x ->
  if x == 3 do
    found_three = true
  else
    result = result + x
  end

  if found_three do
    throw(:three_found)
  end
end)
```