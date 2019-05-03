defmodule BunsanUsersWeb.PageController do
  use BunsanUsersWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
