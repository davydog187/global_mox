defmodule GlobalMox.Interface.Impl do
  @behaviour GlobalMox.Interface

  def foo(val) do
    "impl-" <> val
  end
end
