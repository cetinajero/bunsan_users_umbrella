defmodule FirstAppWeb.Router do
  use FirstAppWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :headers do
    plug FirstAppWeb.HeadersValidation
    plug FirstAppWeb.CookieValidation
  end

  scope "/", FirstAppWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api/v1", FirstAppWeb do
    pipe_through :api
    pipe_through :headers
    get "/welcome", PageController, :welcome
    get "/welcome/:user_name", PageController, :welcome_user
    post "/user", PageController, :create_user
  end
end
