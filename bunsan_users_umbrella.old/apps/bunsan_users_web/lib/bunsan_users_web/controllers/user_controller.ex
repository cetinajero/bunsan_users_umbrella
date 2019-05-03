defmodule BunsanUsersWeb.UserController do
    @moduledoc """
    Controller for Users
    """

    use BunsanUsersWeb, :controller

    def create(conn, _params) do
        conn
            |> put_status(201)
            |> json(%{user: "user"})
    end

    def index(conn, _params) do
       conn
        |> put_status(200)
        |> json(%{users: []})
    end

    def show(conn, _params) do
        conn
         |> put_status(200)
         |> json(%{user: "user"})
     end
end