defmodule Core.CountServer do
  use GenServer

  @impl true
  def init(value) do
    {:ok, value}
  end

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
end
