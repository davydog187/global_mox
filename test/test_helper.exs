Application.put_env(:global_mox, GlobalMox.Interface, GlobalMox.InterfaceMock)

ExUnit.start()

Ecto.Adapters.SQL.Sandbox.mode(GlobalMox.Repo, :manual)
