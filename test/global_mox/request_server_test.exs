defmodule GlobalMox.RequestServerTest do
  use GlobalMox.DataCase

  alias GlobalMox.RequestServer

  test "it can get data from the service" do
    assert {:ok, "mockimpl-test"} == RequestServer.request("test")
  end
end
