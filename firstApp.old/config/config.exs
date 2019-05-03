# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :firstApp,
  ecto_repos: [FirstApp.Repo]

# Configures the endpoint
config :firstApp, FirstAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2X9ri7oBmxQd2mHSpd2qXUx8FsRwUByR65D/ICNcTzDdGBt6sR0E4Kx8jF6BYl3S",
  render_errors: [view: FirstAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FirstApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
