defmodule MyList do

  def span(from, to) when from == to, do: [from]
  def span(from, to) when from < to do
    [from | span(from+1, to)]
  end




  def len([]), do: 0
  def len([_ | tail]), do: 1 + len(tail)



  def square([]), do: []
  def square([head | tail]), do: [ (head * head) | square(tail)]


  def addone([]), do: []
  def addone([head | tail]), do: [ (head + 1) | addone(tail)]


  def map([], _func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)]

  # MyList.map [1,2,3], fn a -> a*a end
  # MyList.map [1,2,3], &(&1*&1)

  def reduce([], value, _func), do: value
  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end
  # def reduce([], value, _) do
  #   value
  # end
  # def reduce([head | tail], value, func) do
  #   reduce(tail, func.(head, value), func)
  # end

  # MyList.reduce([1,2,3,4,5], 0, &(&1 + &2))
  # foo = [1,2,3,4,5]
  # MyList.reduce(foo, 0, &(&1 + &2))
  # MyList.reduce([1,2,3,4,5], 0, &(&1 + &2))
  #


  def mapsum([], _fun), do: 0

  def mapsum([ head | tail], fun) do
    fun.(head) + mapsum(tail, fun)
  end

  def max([a]), do: a
  def max([head | tail]) do
    max(max(tail), head)
  end


end

defmodule Swapper do
  def swap([]), do: []
  def swap([a, b | tail]), do: [b,a | swap(tail)]
  def swap([a]), do: raise "odd numbered list"
end

defmodule WeatherHistory do


  def for_location_27([]), do: []
  def for_location_27([[time, 27, temp, rain] | tail]) do
    [[time,27,temp,rain] | for_location_27(tail)]
  end
  def for_location_27([_ | tail]), do: for_location_27(tail)

  def for_location([], _target_loc), do: []
  def for_location([head = [_, target_loc, _, _] | tail], target_loc) do
    [head | for_location(tail, target_loc)]
  end
  # def for_location([[time, target_loc, temp, rain] | tail], target_loc) do
  #   [[time,target_loc,temp,rain] | for_location(tail, target_loc)]
  # end
  def for_location([_ | tail], target_loc), do: for_location(tail, target_loc)


  def test_data do
    [
   [1366225622, 26, 15, 0.125],
   [1366225622, 27, 15, 0.45],
   [1366225622, 28, 21, 0.25],
   [1366229222, 26, 19, 0.081],
   [1366229222, 27, 17, 0.468],
   [1366229222, 28, 15, 0.60],
   [1366232822, 26, 22, 0.095],
   [1366232822, 27, 21, 0.05],
   [1366232822, 28, 24, 0.03],
   [1366236422, 26, 17, 0.025]
  ]
  end
end

defmodule Foo do
end
