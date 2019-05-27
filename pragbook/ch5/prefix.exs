prefix = fn
  a -> fn b -> "#{a} #{b}" end
end

foo = prefix.("whuts")
foo.("up")

IO.puts prefix.("Whats").("up")
