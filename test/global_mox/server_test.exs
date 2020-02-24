defmodule GlobalMox.ServerTest do
  use GlobalMox.DataCase

  alias GlobalMox.Server

  test "it is using the correct module" do
    assert {:ok, GlobalMox.InterfaceMock} == Server.interface_module()
  end
end
