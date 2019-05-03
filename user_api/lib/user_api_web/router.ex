defmodule UserApiWeb.Router do
  use UserApiWeb, :router

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
    plug UserApiWeb.HeadersValidation
    plug UserApiWeb.UUIDValidation
  end

  scope "/", UserApiWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api/v1", UserApiWeb do
    pipe_through :api
    pipe_through :headers
    get "/welcome", PageController, :welcome
    get "/welcome/:user_name", PageController, :welcome_user
    post "/user", PageController, :create_user
  end
end
