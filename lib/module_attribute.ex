defmodule ModuleAttribute do
  @moduledoc """
  Pattern Matching Module
  """
  @two 2
  @doc """
  Transforms the number into a different value
  """
  def calculator(number) do
    number
    |> sum
    |> multiply
    |> subtract
  end

 @doc """
 Sum function
 """
  def sum(number) do
    number + number
  end

  def multiply(number) do
    number * number
  end

  def subtract(number) do
    number - @two
  end
end
IO.inspect(ModuleAttribute.calculator(3))
# on terminal: elixir lib/module_attribute.ex
