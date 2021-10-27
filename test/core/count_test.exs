defmodule Core.CountTest do
  use ExUnit.Case

  alias Core.Count

  setup do
    Count.reset()
  end

  describe "increment/1" do
    test "when pass value by parameter" do
      actual_state = Count.return_count()
      Count.increment(10)

      updated_state = Count.return_count()

      assert actual_state == 0
      assert updated_state == 10
      assert actual_state != updated_state
    end
  end

  describe "decrement/1" do
    test "when pass value by parameter" do
      actual_state = Count.return_count()
      Count.decrement(10)

      updated_state = Count.return_count()

      assert actual_state == 0
      assert updated_state == -10
      assert actual_state != updated_state
    end
  end

  describe "reset/0" do
    test "when reset set state for 0" do
      Count.increment(150)

      updated_state = Count.return_count()
      reset_state = Count.reset()

      assert updated_state == 150
      assert reset_state == :ok
      assert Count.return_count() == 0
      assert updated_state != reset_state
    end
  end

  describe "return_count/0" do
    test "when reset set state for 0" do
      assert Count.return_count() == 0
    end
  end
end
