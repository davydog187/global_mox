defmodule GlobalMox.Interface do
  alias GlobalMox.Interface.Impl

  @callback foo(val :: String.t()) :: String.t()

  def foo(val) do
    impl().foo(val)
  end

  def module, do: impl()

  defp impl do
    Application.get_env(:global_mox, __MODULE__)
  end
end
