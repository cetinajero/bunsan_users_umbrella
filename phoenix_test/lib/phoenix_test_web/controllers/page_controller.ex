defmodule PhoenixTestWeb.PageController do
  use PhoenixTestWeb, :controller

  def index(conn, _params) do
    IO.inspect self
    render conn, "index.html"
  end
end
