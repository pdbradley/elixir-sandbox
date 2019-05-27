# IO.puts "Hello World"

list_concat = fn [a, b], [c,d] -> [a,b,c,d] end 
list_concat.([:a,:b], [:c,:d])

sum = fn a,b,c -> a+b+c end
# IO.puts sum.(1,2,3)

pair_tuple_to_list = fn {a,b} -> [a,b] end
pair_tuple_to_list.({1234,5678})


handle_open = fn
  {:ok, file} -> "Read data: #{IO.read(file, :line)}"
  {_, error} -> "Error: #{:file.format_error(error)}"
end

# IO.puts handle_open.(File.open("hello.exs"))
# IO.puts handle_open.(File.open("hlo.exs"))


fizzbuzz = fn
  (0,0,_) -> "FizzBuzz"
  0,_,_ -> "Fizz"
  _,0,_ -> "Buzz"
  _,_,a -> a
end

# IO.puts fizzbuzz.(0,0,1)
# IO.puts fizzbuzz.(0,1,2)
# IO.puts fizzbuzz.(1,0,2)
# IO.puts fizzbuzz.(1,2,3)

foo = fn
  a -> fizzbuzz.(rem(a,3), rem(a,5), a)
end

# IO.puts foo.(10)
# IO.puts foo.(11)
# IO.puts foo.(12)
# IO.puts foo.(13)
# IO.puts foo.(14)
# IO.puts foo.(15)
# IO.puts foo.(16)
#

# add_n = fn n -> (fn other -> n + other end) end

# prefix = fn a -> (fn b -> a <> " " <> b end) end


Enum.map [1,2,3,4], &(&1 + 2)

Enum.map [1,2,3,4], &(IO.inspect(&1))
