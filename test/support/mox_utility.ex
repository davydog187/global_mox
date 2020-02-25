defmodule Stubs do
  defp pre_app_start do
    Application.put_env(:global_mox, GlobalMox.Interface, GlobalMox.Interface.StubImpl)
  end

  defp post_app_start do
    Application.put_env(:global_mox, GlobalMox.Interface, GlobalMox.InterfaceMock)

    Mox.stub_with(GlobalMox.InterfaceMock, GlobalMox.Interface.StubImpl)
    Mox.allow(GlobalMox.InterfaceMock, self(), GlobalMox.RequestServer)
    Mox.allow(GlobalMox.InterfaceMock, self(), GlobalMox.Server)
  end

  @doc """
  Starts the application, stubbing out modules correctly before and after it starts
  """
  def start_application do
    pre_app_start()

    {:ok, _} = Application.ensure_all_started(:global_mox)

    post_app_start()
  end

  def stop_application do
    :ok = Application.stop(:global_mox)
  end
end
