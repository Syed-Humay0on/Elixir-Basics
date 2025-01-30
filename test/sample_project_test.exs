defmodule BubbleSort do
  def sort([]), do: []
  def sort([head | tail]) do
    sorted_tail = sort(tail)
    insert(head, sorted_tail)
  end

  defp insert(x, []), do: [x]
  defp insert(x, [head | tail]) when x <= head do
    [x | [head | tail]]
  end
  defp insert(x,[head | tail]) do
    [head | insert(x,tail)]
  end
  end
