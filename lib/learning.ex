defmodule Learning do
  def hello(name) do
    "Hello, #{name}"
  end
end

IO.puts(Learning.hello("Elixir"))
# on terminal: elixir lib/learning.ex
