defmodule Transformation do
  import MathFunc, only: [sum: 1, multiply: 1, subtract: 1]
  def calculator(number) do
    number
    |> sum
    |> multiply
    |> subtract
  end
end
# on terminal: iex -S mix
# on iex: Transformation.calculator(2)
