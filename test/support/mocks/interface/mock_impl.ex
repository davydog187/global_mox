defmodule GlobalMox.Interface.MockImpl do
  @behaviour GlobalMox.Interface

  def foo(val) do
    "mockimpl-" <> val
  end
end
