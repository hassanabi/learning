defmodule Recursion do
  def string_to_map([head | tail], final_map) do
    [key, value] = String.split(head, ": ")
    final_map = Map.put(final_map, key, value)
    string_to_map(tail, final_map)
  end

  def string_to_map([], final_map), do: final_map
end

# ["key1: value1", "key2: value2", "key3: value3"], %{}
# Note: enum takes care of recursion all the time
