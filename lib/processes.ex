defmodule Processes do
  # Process.list |> Enum.count to find out number of process running on the current BEAM
  # :observer.start to open BEAM ui
  # https://elixir-lang.org/getting-started/processes.html
  def send_message(func) do
    parent = self()
    spawn(fn -> send(parent, {:hello, func.()}) end)
  end

  def receive_message() do
    receive do {:hello, value} -> value end
  end

  def sum(num1, num2) do
    num1 + num2
  end

  def text(message) do
    message
  end

  def subtract(num1, num2) do
    num1 - num2
  end

  def handle_process() do
    send_message(fn -> sum(1,3) end)
    send_message(fn -> text("text message") end)
    send_message(fn -> subtract(3,8) end)

    rec1 = receive_message()
    rec2 = receive_message()
    rec3 = receive_message()

    messages = [rec1, rec2, rec3]
    IO.inspect messages
  end
end
