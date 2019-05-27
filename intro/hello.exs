IO.puts 'hello world'

list_concat = fn a, b -> a ++ b end

IO.puts list_concat.( [1,2], [3,4])
