defmodule PatternMatch do
  alias SampleStruct, as: Test
  def match() do
    [method, path, version] =
      "GET /withdraw HTTP/1.1"
      |> String.split(" ")
    %Test{method: method, path: path, version: version}
  end
end
# on terminal: iex -S mix
# on iex: PatternMatch.match()
