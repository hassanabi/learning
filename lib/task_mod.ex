defmodule TaskMod do
  def sender(email) do
    Process.sleep(3000)
    IO.puts "Email to #{email} sent!"
    {:ok, "email_sent #{email}"}
  end

  def notify_all(emails) do
    emails
    |> Task.async_stream(fn email -> sender(email) end)
    |> Enum.to_list()
  end
end
