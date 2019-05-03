# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :user_api,
  ecto_repos: [UserApi.Repo]

# Configures the endpoint
config :user_api, UserApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5udDLeVoDcERBsv8Pi3KGP+GuVodZGgyuMOj5FyQyCHn5R7jn1eeYDUabuTx1W6w",
  render_errors: [view: UserApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: UserApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
