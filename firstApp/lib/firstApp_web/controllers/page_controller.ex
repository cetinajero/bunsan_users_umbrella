defmodule FirstAppWeb.PageController do
  use FirstAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show_users(conn, _params) do
    IO.inspect "Controller"
    IO.inspect self 
    conn
      |> put_status(200)
      |> text("Must show users")
  end
end
