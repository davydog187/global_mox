defmodule GlobalMox.InterfaceTest do
  use GlobalMox.DataCase

  test "it uses the MockImpl" do
    Mox.stub_with(GlobalMox.InterfaceMock, GlobalMox.Interface.MockImpl)

    assert GlobalMox.Interface.foo("test") == "mockimpl-test"
  end
end
