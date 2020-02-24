defmodule GlobalMox.InterfaceTest do
  use GlobalMox.DataCase

  test "it uses the MockImpl" do
    assert GlobalMox.Interface.foo("test") == "mockimpl-test"
  end
end
