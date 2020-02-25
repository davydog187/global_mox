defmodule GlobalMox.RequestServerTest do
  use GlobalMox.DataCase

  alias GlobalMox.RequestServer

  setup :verify_on_exit!

  test "it can mock the interface" do
    GlobalMox.InterfaceMock
    |> expect(:foo, 1, fn val -> "expect-" <> val end)

    assert {:ok, "expect-test"} == RequestServer.request("test")
    assert {:ok, GlobalMox.InterfaceMock} == RequestServer.interface_module()
  end

  test "it can rely on the stub" do
    assert {:ok, "stubimpl-test"} == RequestServer.request("test")
    assert {:ok, GlobalMox.InterfaceMock} == RequestServer.interface_module()
  end
end
