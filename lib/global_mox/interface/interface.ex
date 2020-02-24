defmodule GlobalMox.Interface do
  alias GlobalMox.Interface.Impl

  @callback foo(val :: String.t()) :: String.t()

  @implementation Application.compile_env(:global_mox, __MODULE__, Impl)

  defdelegate foo(val), to: @implementation
end
