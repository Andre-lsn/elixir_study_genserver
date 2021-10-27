defmodule CountFacade do
  alias Core.Count

  defdelegate increment(value \\ 1), to: Count, as: :increment
  defdelegate decrement(value \\ 1), to: Count, as: :decrement
  defdelegate return_count, to: Count, as: :return_count
  defdelegate reset_count, to: Count, as: :reset
end
