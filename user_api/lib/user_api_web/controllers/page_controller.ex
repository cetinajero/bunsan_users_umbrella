defmodule UserApiWeb.PageController do
  use UserApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def welcome(conn, %{"age" => age}) do
    conn
      |> put_status(200)
      |> text("Welcome user with age #{age}")
  end

  def welcome(conn, _) do
    conn
      |> put_status(200)
      |> text("Welcome")
  end

  def welcome_user(conn, %{"user_name" => user_name}) do
    conn
      |> put_status(200)
      |> text("Welcome #{user_name}")
  end

  def welcome_user(conn, _) do
    conn
      |> put_status(400)
      |> text("Unsupported params, fix request")
  end

  def create_user(conn, %{"age" => age, "name" => "Ricardo"} = params) do
    conn
      |> put_status(201)
      |> render("user.json", %{user: params})
      # |> json(%{special_user: %{"message" => "User created", age: age, name: "Ricardo"}})
  end

  def create_user(conn, %{"age" => age, "name" => name}) do
    conn
      |> put_status(201)
      |> json(%{"message" => "User created", age: age, name: name})
  end
end
