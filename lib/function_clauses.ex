defmodule FunctionClauses do
  def run_clause(message) do
    clause(message)
  end

  def clause("hello") do
    IO.puts("Hello world!")
  end

  def clause("hi") do
    IO.puts("Hi moon!")
  end
end
IO.inspect(FunctionClauses.run_clause("hi"))
# on terminal: elixir lib/function_clauses.ex
