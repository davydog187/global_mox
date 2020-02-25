defmodule GlobalMox.InterfaceTest do
  use GlobalMox.DataCase

  test "it uses the StubImpl" do
    assert GlobalMox.Interface.foo("test") == "stubimpl-test"
  end
end
