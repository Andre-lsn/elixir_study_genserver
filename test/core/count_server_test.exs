defmodule Core.CountServerTest do
  use ExUnit.Case

  alias Core.CountServer

  describe "init/1" do
    test "when return one sucess tuple" do
      assert CountServer.init(0) == {:ok, 0}
    end
  end
end
