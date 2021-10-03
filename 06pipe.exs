defmodule PipeTest do
  def square(x) do
    x * x
  end

  def sum(l, start \\ 0) do
    start + Enum.sum(l)
  end

  def sst(the_list) do
    the_list
    |> tl
    |> IO.inspect
    |> sum
    |> IO.inspect
    |> square
    |> IO.inspect
  end
end

IO.puts(PipeTest.sst([1, 2, 5]))
