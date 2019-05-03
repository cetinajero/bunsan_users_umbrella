# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :firstApp,
  ecto_repos: [FirstApp.Repo]

# Configures the endpoint
config :firstApp, FirstAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "V422GHFSwAoF2edZuE7QU5gE4bJksKoiFR7d56F7XdI7h8ISyl3gvU4TBWx9Rtjg",
  render_errors: [view: FirstAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FirstApp.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures the endpoint
config :firstApp, FirstAppWeb.BoEndpoint,
  url: [host: "localhost"],
  secret_key_base: "T422GHFSwAoF2edZuE7QU5gE4bJksKoiFR7d56F7XdI7h8ISyl3gvU4TBWx9Rtjg",
  render_errors: [view: FirstAppWeb.ErrorView, accepts: ~w(html json)]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
