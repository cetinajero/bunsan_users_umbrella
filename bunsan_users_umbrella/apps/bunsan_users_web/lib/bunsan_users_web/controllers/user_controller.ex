defmodule BunsanUsersWeb.UserController do
    @moduledoc """
        Controller for users
    """

    use BunsanUsersWeb, :controller
    alias BunsanUsers.User

    def create(conn, %{"user" => user_params}) do
        chg = User.signup_changeset(%User{}, user_params)
        case chg.valid? do
            true ->
                {:ok, user} = User.save(chg)
                conn
                    |> put_status(201)
                    # |> json(%{user: %{name: user.name, age: user.age, email: user.email}})
                    |> render("user.json", %{user: user})
            false ->
                # IO.inspect chg.errors
                # conn
                    # |> put_status(400)
                    # |> json(%{error: "Unable to create user"})
                {:error, chg}
        end
    end

    def index(conn, _params) do
        users = User.search_all
        conn
            |> put_status(200)
            # |> json(%{users: []})
            |> render("users.json", %{users: users})
    end

    def show(conn, %{"id" => user_id}) do
        # conn
        #     |> put_status(200)
        #     |> json(%{user: "user"})
        case User.search(user_id) do
            nil -> 
                {:error, "user_not_found"}
            user -> 
                conn
                    |> put_status(200)
                    |> render("user.json", %{user: user})
        end
    end

end