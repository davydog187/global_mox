defmodule GlobalMox.Server do
  @moduledoc """
  Service that just keeps calling `GlobalMox.Interface.foo/1`

  This is intended to run in the Application supervision  tree to test
  interaction with Mox
  """
  use GenServer

  require Logger

  alias GlobalMox.Interface

  def start_link(args) do
    GenServer.start_link(__MODULE__, :ok, name: args[:name] || __MODULE__)
  end

  def interface_module(pid \\ __MODULE__) do
    GenServer.call(pid, :interface_module)
  end

  def init(:ok) do
    {:ok, :ok, {:continue, :call_interface}}
  end

  def handle_continue(:call_interface, _state) do
    Logger.warn("calling the interface in #{__MODULE__} with #{Interface.module()}")
    Interface.foo("hello")

    {:noreply, {:continue, :call_interface}}
  end

  def handle_call(:interface_module, _from, state) do
    {:reply, {:ok, GlobalMox.Interface.module()}, state}
  end
end
