

f = fn
  0,0,_ -> "FizzBuzz"
  0,_,_ -> "Fizz"
  _,0,_ -> "Buzz"
  _,_,c -> c
end

IO.puts f.(0,0,3)
IO.puts f.(0,1,3)
IO.puts f.(1,0,3)
IO.puts f.(1,1,5)


prefix = fn a -> (fn b -> a <> " " <> b end) end

IO.puts prefix.("hi").("there")

