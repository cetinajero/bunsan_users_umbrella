defmodule BunsanUsersWeb.Router do
  use BunsanUsersWeb, :router

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

  # scope "/", BunsanUsersWeb do
  #   pipe_through :browser

  #   get "/", PageController, :index
  # end

  # Other scopes may use custom stacks.
  scope "/api/v1", BunsanUsersWeb do
    pipe_through :api
    resources "/users", UserController, only: [:index, :show, :create]
    # get "/users", UserController, :index
    # get "/users/:id", UserController, :show
    # post "/users", UserController, :create
  end
end
