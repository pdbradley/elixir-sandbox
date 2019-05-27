fizzbuzz = fn 
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

foo = fn
  a -> fizzbuzz.(rem(a,3), rem(a,5), a)
end

IO.puts fizzbuzz.(0,0,1)
IO.puts fizzbuzz.(0,1,2)
IO.puts fizzbuzz.(1,0,2)
IO.puts fizzbuzz.(1,2,3)



IO.puts foo.(10) 
IO.puts foo.(11) 
IO.puts foo.(12) 
IO.puts foo.(13) 
IO.puts foo.(14) 
IO.puts foo.(15) 
IO.puts foo.(16) 
