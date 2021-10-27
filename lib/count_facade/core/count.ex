defmodule Core.Count do
  use GenServer

  @impl true
  def init(value), do: {:ok, value}

  @impl true
  def handle_cast({:increment, value}, state) do
    {:noreply, state + value}
  end

  @impl true
  def handle_cast({:decrement, value}, state) do
    {:noreply, state - value}
  end

  @impl true
  def handle_cast({:reset}, _state) do
    state = 0

    {:noreply, state}
  end

  @impl true
  def handle_call(:count, _from, state) do
    {:reply, state, state}
  end

  def start_link(init_arg \\ []) do
    GenServer.start_link(__MODULE__, init_arg, name: __MODULE__)
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
