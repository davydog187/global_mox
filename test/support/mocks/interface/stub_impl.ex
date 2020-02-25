defmodule GlobalMox.Interface.StubImpl do
  @behaviour GlobalMox.Interface

  def foo(val) do
    "stubimpl-" <> val
  end
end
