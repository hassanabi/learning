# Structs are maps with reduced functionality, compile-time checks, and default values.
# Compile-time checks ensure that structs do not have any variable that has not been
# declared for it, and that default values are assigned values to struct member variables
# if no value has been ​explicitly assigned.

defmodule CustomersStruct do
  defstruct id: 0, company_name: "", contact_person: "", amount: 0.00, account_status: true
end
