defmodule GlobalMox.MoxUtiity do
  def stub_all do
    Application.put_env(:global_mox, GlobalMox.Interface, GlobalMox.Interface.StubImpl)

    {:ok, _} = Application.ensure_all_started(:global_mox)

    Application.put_env(:global_mox, GlobalMox.Interface, GlobalMox.InterfaceMock)

    Mox.stub_with(GlobalMox.InterfaceMock, GlobalMox.Interface.StubImpl)
    Mox.allow(GlobalMox.InterfaceMock, self(), GlobalMox.RequestServer)
    Mox.allow(GlobalMox.InterfaceMock, self(), GlobalMox.Server)
  end
end
