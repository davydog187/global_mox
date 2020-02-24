defmodule GlobalMox.RequestServer do
  @moduledoc """
  Service that handles requests that delegate to an interface that
  delegates to Mox.
  """
  use GenServer

  def start_link(args) do
    GenServer.start_link(__MODULE__, :ok, name: args[:name] || __MODULE__)
  end


  def request(pid \\ __MODULE__, val) do
    GenServer.call(pid, {:request, val})
  end

  def interface_module(pid \\ __MODULE__) do
    GenServer.call(pid, :interface_module)
  end


  def init(:ok) do
    {:ok, :ok}
  end

  def handle_call({:request, val}, _from, state) do
    {:reply, {:ok, GlobalMox.Interface.foo(val)}, state}
  end


  def handle_call(:interface_module, _from, state) do
    {:reply, {:ok, GlobalMox.Interface.module()}, state}
  end
end
