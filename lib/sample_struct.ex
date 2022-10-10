# Structs are maps with reduced functionality, compile-time checks, and default values.
# Compile-time checks ensure that structs do not have any variable that has not been
# declared for it, and that default values are assigned values to struct member variables
# if no value has been ​explicitly assigned.

defmodule SampleStruct do
  defstruct method: "", path: "", version: ""
end
