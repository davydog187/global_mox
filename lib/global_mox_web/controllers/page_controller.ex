defmodule GlobalMoxWeb.PageController do
  use GlobalMoxWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
