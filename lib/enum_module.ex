defmodule EnumModule do
  alias CustomersStruct, as: Customer
  def customers_table do
    [
      %Customer{id: 1, company_name: "ABC Foods Ltd", contact_person: "John Doe", amount: 10.00, account_status: true},
      %Customer{id: 2, company_name: "Massive Dynamic Inc.", contact_person: "Malik Wilson", amount: 11.50, account_status: true},
      %Customer{id: 3, company_name: "AME Corporation", contact_person: "Eleanor Denney", amount: 12.00, account_status: false},
      %Customer{id: 4, company_name: "Weeds Venture Capital Partners", contact_person: "Melissa Johnson", amount: 10.00, account_status: false}
    ]
  end

  @doc """
  Enum.find
  """
  def get_customer(id) when is_integer(id) do
    Enum.find(customers_table(), fn(c) -> c.id == id end)
  end

  def get_customer(id) when is_binary(id) do
    id
    |> String.to_integer
    |> get_customer
  end

  @doc """
  Enum.filter
  """
  def filter_by_amount_greater_than(amount) do
    customers_table()
    |> Enum.filter(fn(customer) -> customer.amount >= amount end)
  end

  def filter_by_amount_less_than(amount) do
    customers_table()
    |> Enum.filter(fn(customer) -> customer.amount <= amount end)
  end

  @doc """
  Enum.sum and Enum.reduce
  """
  def sum_amount() do
    customers_table()
    |> Enum.map(fn %{amount: amount} -> amount end)
    |> Enum.sum
  end

  def reduce_amount() do
    customers_table()
    |> Enum.map(fn %{amount: amount} -> amount end)
    |> Enum.reduce(fn amount, acc -> amount + acc end)
  end

  @doc """
  Enum.join
  """
  def customer_names() do
    customers_table()
    |> Enum.map(fn %{company_name: customer_name} -> customer_name end)
    |> Enum.join(", ")
  end

  @doc """
  Enum.sort
  """
  def sort_descending() do
    customers_table()
    |> Enum.sort_by(fn (customer) -> customer.id end, &>=/2)
  end

  def sort_ascending() do
    customers_table()
    |> Enum.sort_by(fn (customer) -> customer.id end, &<=/2)
  end

  @doc """
  Enum.min and Enum.max
  """
  def min_amount() do
    customers_table()
    |> Enum.map(fn %{amount: amount} -> amount end)
    |> Enum.min
  end

  def max_amount() do
    customers_table()
    |> Enum.map(fn %{amount: amount} -> amount end)
    |> Enum.max
  end

  def min_max_amount() do
    customers_table()
    |> Enum.map(fn %{amount: amount} -> amount end)
    |> Enum.min_max
  end


  # pipe all the enum
end
