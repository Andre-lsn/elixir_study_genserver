defmodule CountFacadeTest do
  use ExUnit.Case
  doctest CountFacade

  test "greets the world" do
    assert CountFacade.hello() == :world
  end
end
