defmodule FirstAppWeb.PageController do
  use FirstAppWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
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
    |> text("Welcome user name: #{user_name}")  
  end

  def welcome_user(conn, _) do
    conn
    |> put_status(400)
    |> text("Bad request")  
  end

  def create_user(conn, %{"age" => age, "name" => "Ricardo"}) do
    conn 
      |> put_status(201)
      |> json(%{special_user: %{age: age, name: "Ricardo"}})
  end

  def create_user(conn, %{"age" => age, "name" => name}) do
    conn 
      |> put_status(201)
      |> json(%{age: age, name: name})
  end

end
