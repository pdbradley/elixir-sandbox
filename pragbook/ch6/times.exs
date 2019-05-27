defmodule Times do

  def triple(n), do: n*3

  def double(n) do
    n*2
  end

  def quadruple(n) do
    double(n) * 2
  end
end


defmodule Factorial do
  def of(0), do: 1

  def of(n) when is_integer(n) and n > 0 do
    n * of(n-1) 
  end
end


defmodule MyMath do
  def sum(1), do: 1
  def sum(n), do: n + sum(n-1)


  def gcd(x,0), do: x

  def gcd(x,y) do
    gcd(y, rem(x,y))
  end

end


defmodule Guard do
  def what_is(x) when is_number(x) do
    IO.puts "#{x} is a number"
  end

  def what_is(x) when is_list(x) do
    IO.puts "#{inspect(x)} is a list"
  end

  def what_is(x) when is_atom(x) do
    IO.puts "#{x} is a atom"
  end
end

defmodule Chop do

  def guess(answer, range) do
    IO.puts "Is it #{middle(range)}"
    guess(answer, middle(range), range)
  end

  defp middle(bottom..top) do
    div((bottom + top), 2)
  end

  defp guess(answer, guess, _) when guess == answer do
    IO.puts guess
  end

  defp guess(answer, guess, _..top) when guess < answer do
    guess(answer, guess..top)
  end

  defp guess(answer, guess, bottom.._) when guess > answer do
    guess(answer, bottom..guess)
  end

end
