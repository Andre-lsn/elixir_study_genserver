defmodule Core.Count do

  def start_link(init_arg \\ []) do
    GenServer.start_link(Core.CountServer, init_arg, name: __MODULE__)
  end

  def increment(value) when is_number(value) do
    GenServer.cast(__MODULE__, {:increment, value})
  end

  def decrement(value) when is_number(value) do
    GenServer.cast(__MODULE__, {:decrement, value})
  end

  def reset, do: GenServer.cast(__MODULE__, {:reset})

  def return_count, do: GenServer.call(__MODULE__, :count)
end
